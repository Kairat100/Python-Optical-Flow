import cv2

import numpy as np
from PIL import Image
from scipy.ndimage import filters,measurements,morphology
import cPickle
import operator

from constants import *
from tools import *
from skinDetection import *

from math import *

# finding distance from point to line
def dist(l, r, mp):
  x1 = l[0]
  y1 = l[1]
  x2 = r[0]
  y2 = r[1]
  x3 = mp[0]
  y3 = mp[1]
  if x1 == x2 and y1 == y2:
    return sqrt((x3-x1)*(x3-x1) + (y3-y1)*(y3-y1))

  area = float(fabs((x1 - x3)*(y2 - y3) - (x2 - x3)*(y1 - y3)))

  dist = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))

  return area/dist

# finding variance of angles in trajectory between two points
def calc_variance(t, l, r):
    # find mean
  sum_angles = 0

  for i in range(l, r):
    mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])
    sum_angles += ang[0][0]
  mean = sum_angles / (r - l)

  # find variance
  variance = 0
  
  for i in range(l, r):
    mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])
    variance += (ang[0][0] - mean)*(ang[0][0] - mean)
  
  variance /= (r - l)

  return variance

# finding max distance from point to line in a segment
def find_max_point(t, l, r, frame_num, ip):
  max_dist = -1
  peak = -1
  for i in range(l + 1, r):
    distance = dist(t[l], t[r], t[i])
    if distance > max_dist:
      max_dist = distance
      peak = i
  
  if peak != -1:
    frame_n = frame_num - (len(t) - peak - 2)
    if not (frame_n in ip):
      ip.setdefault(frame_n, [])
    if not (t[peak] in ip[frame_n]):
      ip[frame_n].append(t[peak])

  return peak    

# recursively finding peaks
def find_peaks(t, l, r, frame_num, ip):
  if (r - l > SEGMENT_SIZE):
    find_peaks(t, l, (r-l)/2, frame_num, ip)
    find_peaks(t, (r-l)/2 + 1, r, frame_num, ip)    
  else:
    variance = calc_variance(t, l, r)

    # check for peak
    if variance > VAR_TH:
      peak = find_max_point(t, l, r, frame_num, ip)
      find_peaks(t, l, peak, frame_num, ip)
      find_peaks(t, peak, r, frame_num, ip)


def trajectories_find_last(trajectories, ip, left, frame_num):
    for index, t in enumerate(trajectories):

      # initializing left and right ends of segment
      if not (index in left):
        left[index] = 0

      find_peaks(t, left[index], len(t) - 1, frame_num, ip)


def trajectories_find(trajectories, ip, left, frame_num, frame2, flow, clfNB, points, kernel):
  height = frame2.shape[0]
  width = frame2.shape[1]

  num_points = 0
  npoints = []

   
  for index, t in enumerate(trajectories):
    # finding next point in trajectory
    x_prev = t[len(t)-1][0]
    y_prev = t[len(t)-1][1]

    xx = min(max(x_prev,0),width -1)
    yy = min(max(y_prev,0),height -1)

    x = x_prev + int(flow[yy, xx, 0])
    y = y_prev + int(flow[yy, xx, 1])

    t.append([x,y])


    # Check if points stop
    mag, ang = cv2.cartToPolar(x - x_prev, y - y_prev)
    if mag[0] < MAG_TH:
      npoints.append(t[len(t) - 1])
      num_points += 1




    # visualize trajectory
    cv2.line(frame2, (x_prev, y_prev), (x, y), (0,255,0), 1)

  # find stops
  stops(trajectories, ip, frame_num, frame2, clfNB, num_points, npoints, kernel)

def find_points(gray_thres_gaus, frame2, maxLeft, maxTop):
  colors = {}
  cv2.imshow('mask', np.array(gray_thres_gaus))
  labels, nbr_objects = measurements.label(gray_thres_gaus)
  for i in labels:
    for j in i:
      if j != 0:
        if not j in colors:
          colors.setdefault(j, 0)
        colors[j] += 1
  
  hand = []
  i = 0  
  for ind, value in sorted(colors.items(), key = operator.itemgetter(1), reverse = True):
    i += 1
    hand.append(ind)
    if i >= 2:
      break

  mask = np.zeros((frame2.shape[0], frame2.shape[1]), np.uint8)
  
  if len(hand) > 1:
    for ik, i in enumerate(labels):
      for jk, j in enumerate(i):
        if j == hand[0] or j == hand[1]:
          mask[maxTop[1] - PIXEL_RANGE + ik][maxLeft[0] - PIXEL_RANGE + jk] = 255
  else:
    for ik, i in enumerate(labels):
      for jk, j in enumerate(i):
        if j == hand[0]:
          mask[maxTop[1] - PIXEL_RANGE + ik][maxLeft[0] - PIXEL_RANGE + jk] = 255

  cv2.imshow('mask', np.array(mask))
  
  points = []
  
  next = cv2.cvtColor(frame2,cv2.COLOR_BGR2GRAY)
  
  return dense_sample(next, mask, points)

def init_new_points(points, frame2, clfNB):
  #find borders of points
  maxLeft = points[0]
  maxRight = points[0]
  maxBottom = points[0]
  maxTop = points[0]

  for val in points:
    if val[0] < maxLeft[0]:
      maxLeft = val
    if val[0] > maxRight[0]:
      maxRight = val
    if val[1] < maxTop[1]:
      maxTop = val
    if val[1] > maxBottom[1]:
      maxBottom = val

  # crop the original image to size where the points are located
  new_frame = frame2[maxTop[1] - PIXEL_RANGE:maxBottom[1] + PIXEL_RANGE, maxLeft[0] - PIXEL_RANGE:maxRight[0] + PIXEL_RANGE]

  # probability map
  gray_thres_gaus = probability_map(new_frame, clfNB)

  # erose image  
  kernelErode = np.ones((kernel_erode, kernel_erode),np.uint8)
  gray_thres_gaus = cv2.erode(gray_thres_gaus, kernelErode, iterations = 1)
  # dilate image
  kernel = np.ones((kernel_dilate, kernel_dilate),np.uint8)
  gray_thres_gaus = cv2.dilate(gray_thres_gaus, kernel, iterations = 1)
  
  #cv2.imshow('crop', np.array(gray_thres_gaus))

  # add new points to trajectory  
  return find_points(gray_thres_gaus, frame2, maxLeft, maxTop)

def stops(trajectories, ip, frame_num, frame2, clfNB, num_points, npoints, kernel):
  # check whether the number of points that stop is enough
  points = []
  for t in trajectories:
    find_peaks(t, 0, len(t) - 1, frame_num, ip)
    points.append(t[len(t) - 1])

  if num_points > len(points)/2:    
    print "number of points = " + str(num_points)
   
    new_points = init_new_points(points, frame2, clfNB)
    del trajectories[:]
    for p in new_points:
      trajectories.append([p])
      if not (frame_num in ip):
        ip.setdefault(frame_num, [])
      if not ([p] in ip[frame_num]):
        ip[frame_num].append([p])

      cv2.circle(frame2, (p[0],p[1]), 1, (0,255,0))
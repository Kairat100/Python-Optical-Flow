import cv2

import numpy as np
from PIL import Image
from scipy.ndimage import filters,measurements,morphology
import cPickle

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



def trajectories_find(trajectories, ip, left, frame_num, frame2, flow, clfNB, points, kernel, next):
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


    # initializing left and right ends of segment
    if not (index in left):
      left[index] = 0
        

    # calculate and check variance
    if len(t) - left[index] >= SEGMENT_SIZE:

      variance = calc_variance(t, left[index], len(t) - 1)

      # check for peak    
      if variance > VAR_TH:
        peak = find_max_point(t, left[index], len(t) - 1, frame_num, ip)
        
        find_peaks(t, left[index], peak, frame_num, ip)        
        
        left[index] = peak

    # visualize trajectory
    cv2.line(frame2, (x_prev, y_prev), (x, y), (0,255,0), 1)

  # find stops
  #stops(trajectories, ip, frame_num, frame2, clfNB, points, num_points, npoints, kernel, next)


def stops(trajectories, ip, frame_num, frame2, clfNB, points, num_points, npoints, kernel, next):
  # {* Shynggys *}
  # check whether the number of points that stop is enough
  if num_points > NPOINTS:
    print "number of points = " + str(num_points)
    mask = cv2.dilate(probability_map(frame2, clfNB), kernel, iterations = 1)
    points = dense_sample(next, mask, points)

    for p in points:
      trajectories.append([p])

      cv2.circle(frame2, (p[0],p[1]), 1, (0,255,0))

    for item in npoints:
      if not (frame_num in ip):
        ip.setdefault(frame_num, [])
      ip[frame_num].append(item)
  # {* end Shynggys *}
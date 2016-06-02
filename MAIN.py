import cv2

import numpy as np
from PIL import Image
from scipy.ndimage import filters,measurements,morphology
import cPickle

from constants import *
from tools import *
from trajectories import *
from skinDetection import *

from math import *

with open('Skin_color_NBclassifier.pkl', 'rb') as fid:
    clfNB = cPickle.load(fid)

cap = cv2.VideoCapture("k1.webm")

ret, frame1 = cap.read()
prvs = cv2.cvtColor(frame1,cv2.COLOR_BGR2GRAY)

movement = np.zeros((frame1.shape[0], frame1.shape[1]))

kernel = np.ones((kernel_dilate,kernel_dilate),np.uint8)

status = 30
frame_num = 0

points = []
trajectories = []
start = True


# {* Shynggys *}

# interest points
ip = dict()    

# store left and right of the segment
left = {}

# {* end Shynggys *}
while(1):
  ret, frame2 = cap.read()
  
  if (frame2 == None):
    # -> find last peaks

    #trajectories_find_last(trajectories, ip, left, frame_num)
      # {* end Shynggys *}    
    break

  # normalize intensity of frame
  cv2.normalize(frame2, frame2, 0, 255, cv2.NORM_MINMAX, cv2.CV_8UC3)

  next = cv2.cvtColor(frame2,cv2.COLOR_BGR2GRAY)

  flow = cv2.calcOpticalFlowFarneback(prvs, next, 0.5, 3, 15, 3, 5, 1.2, 0)

  print flow.shape

  mag, ang = cv2.cartToPolar(flow[...,0], flow[...,1])
  movement[...] = (mag > magnitude_threshold) * 255

  num_of_thres_traj = np.count_nonzero(mag > magnitude_threshold)
  print "Frame: %d -> %d"%(frame_num, num_of_thres_traj)

  labels, nbr_objects = measurements.label(movement)
  print "Number of objects:", nbr_objects
  print labels

  # print np.count_nonzero(labels == 0)

  # centers = measurements.center_of_mass(points_opening,labels,[1,2,3,4,5,6,7])
  # print centers

  # mov_indexes = np.where(labels != 0) # get all indexes of non-zero label

  # probability map generation
  gray_thres_gaus = probability_map(frame2, clfNB)  

  # find intersection of movement image and skin probability map
  movement = np.uint8(movement)
  intersection = movement
  cv2.bitwise_and(movement, gray_thres_gaus, intersection)
  
  # check trajectory
  trajectories_find(trajectories, ip, left, frame_num, frame2, flow, clfNB, points, kernel, next)


  if np.count_nonzero(intersection) > min_mag_thres_traj and start:

    start = False
    
    # find points of interest ==================================
    mask = cv2.dilate(intersection, kernel, iterations = 1)
    points = dense_sample(next, mask, points)

    for p in points:
      trajectories.append([p])

      cv2.circle(frame2, (p[0],p[1]), 1, (0,255,0))

        
  # print result =======================================
    
  if num_of_thres_traj > 0:
    status = 0
  else:
    status = 30  

  # merge movement image with skin detection image
  background = Image.fromarray(gray_thres_gaus).convert("RGBA")
  overlay = Image.fromarray(movement).convert("RGBA")
  new_img = Image.blend(background, overlay, 0.2)

  cv2.imshow('movement', np.array(new_img))
  cv2.imshow('original', np.array(frame2))
  cv2.imshow('skin_detection', np.array(intersection))

  k = cv2.waitKey(0) & 0xff
  if k == 27:
    break
  elif k == ord('s'):
    cv2.imwrite('opticalfb.png',frame2)
    cv2.imwrite('opticalhsv.png',np.array(intersection))

  prvs = next
  frame_num +=1

for i in sorted(ip):
  print str(i) + ": " + str(len(ip[i]))

cap.release()
cv2.destroyAllWindows()
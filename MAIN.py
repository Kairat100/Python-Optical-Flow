import cv2

import numpy as np
from PIL import Image
from scipy.ndimage import filters,measurements,morphology
import cPickle

from constants import *  


with open('Skin_color_NBclassifier.pkl', 'rb') as fid:
    clfNB = cPickle.load(fid)

cap = cv2.VideoCapture("k1.webm")

ret, frame1 = cap.read()
prvs = cv2.cvtColor(frame1,cv2.COLOR_BGR2GRAY)

movement = np.zeros((frame1.shape[0], frame1.shape[1]))

status = 30
frame_num = 0;

while(1):
  ret, frame2 = cap.read()
  next = cv2.cvtColor(frame2,cv2.COLOR_BGR2GRAY)

  flow = cv2.calcOpticalFlowFarneback(prvs,next, 0.5, 3, 15, 3, 5, 1.2, 0)

  mag, ang = cv2.cartToPolar(flow[...,0], flow[...,1])      
  movement[...] = (mag > magnitude_threshold) * 255

  num_of_thres_traj = np.count_nonzero(mag > magnitude_threshold)
  print "Frame: %d -> %d"%(frame_num, num_of_thres_traj)

  # points_opening = morphology.binary_opening(movement, np.ones((1, 1)), iterations=1)
  # movement[...] = points_opening * 255

  labels, nbr_objects = measurements.label(movement)
  print "Number of objects:", nbr_objects
  # print np.count_nonzero(labels == 0)

  # centers = measurements.center_of_mass(points_opening,labels,[1,2,3,4,5,6,7])
  # print centers

  # mov_indexes = np.where(labels != 0) # get all indexes of non-zero label

  height = frame2.shape[0]
  width = frame2.shape[1]
  imgr = frame2.reshape(height * width, frame2.shape[2])
  val = clfNB.predict_proba(imgr)
  val = val.reshape(height, width, 2)

  gray = np.uint8(val[...,1]*255)

  # threshold gray
  # gray_thres = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY, 11, 2)
  # gray_thres = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11, 2)

   # Otsu's thresholding after Gaussian filtering
  blur = cv2.GaussianBlur(gray,(5,5),0)
  ret, gray_thres_gaus = cv2.threshold(blur,0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)

  # ret, gray_thres = cv2.threshold(gray,0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)




  

  if num_of_thres_traj > 0:
    status = 0
  else:
    status = 30


  # frame_norm = np.zeros_like(frame2)
  # cv2.normalize(frame2, frame_norm, 0, 255, cv2.NORM_MINMAX, cv2.CV_8UC3)

  background = Image.fromarray(gray_thres_gaus).convert("RGBA")
  overlay = Image.fromarray(movement).convert("RGBA")
  new_img = Image.blend(background, overlay, 0.2)




  cv2.imshow('movement', np.array(new_img))
  cv2.imshow('original', np.array(frame2))
  cv2.imshow('skin_detection', np.array(gray))
  k = cv2.waitKey(1) & 0xff
  if k == 27:
    break
  elif k == ord('s'):
    cv2.imwrite('opticalfb.png',frame2)
    cv2.imwrite('opticalhsv.png',np.array(new_img))

  prvs = next
  frame_num +=1

cap.release()
cv2.destroyAllWindows()
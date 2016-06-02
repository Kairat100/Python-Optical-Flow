import cv2
import cv2.cv as cv
import numpy as np

import sys
sys.path.append("../")
from constants import *
from tools import *

# grey = cv2.imread("opticalfb3.png",0)
# mask  = cv2.imread("opticalhsv3.png",0)
cap = cv2.VideoCapture("k1.webm")

kernel = np.ones((kernel_dilate,kernel_dilate),np.uint8)
mask = cv2.dilate(mask, kernel, iterations = 1)

points = dense_sample(grey, mask, [])

ret, frame1 = cap.read()
prvs = cv2.cvtColor(frame1,cv2.COLOR_BGR2GRAY)

movement = np.zeros((frame1.shape[0], frame1.shape[1]))

status = 30
frame_num = 0;

while(1):
  ret, frame2 = cap.read()


for p in points:
	cv2.circle(grey, (p[0],p[1]), 1, 255) 


cv2.imshow('frame3', grey)
cv2.waitKey(0)
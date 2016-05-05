import cv2
import numpy as np
import Image
from constants import *  
import numpy as np

cap = cv2.VideoCapture("k1.webm")

ret, frame1 = cap.read()
prvs = cv2.cvtColor(frame1,cv2.COLOR_BGR2GRAY)
gray = cv2.cvtColor(frame1,cv2.COLOR_BGR2GRAY)

ret, frame2 = cap.read()
next = cv2.cvtColor(frame2,cv2.COLOR_BGR2GRAY)

flow = cv2.calcOpticalFlowFarneback(prvs,next, 0.5, 3, 15, 3, 5, 1.2, 0)

mag, ang = cv2.cartToPolar(flow[...,0], flow[...,1]) 

print type(gray)
gray[...] = (mag > magnitude_threshold) * 255

print type(gray)
frame1 = cv2.cvtColor(gray,cv2.COLOR_GRAY2BGR)

# print frame1.shape


cv2.imshow('frame2', gray)
cv2.waitKey(0)
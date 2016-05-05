import cv2
import numpy as np
import Image
from constants import *  
import numpy as np

cap = cv2.VideoCapture("k1.webm")

ret, frame1 = cap.read()
prvs = cv2.cvtColor(frame1,cv2.COLOR_BGR2GRAY)
hsv = np.zeros_like(frame1)
hsv[...,1] = 255

status = 0
frame_num = 0;

while(1):
  ret, frame2 = cap.read()
  next = cv2.cvtColor(frame2,cv2.COLOR_BGR2GRAY)

  flow = cv2.calcOpticalFlowFarneback(prvs,next, 0.5, 3, 15, 3, 5, 1.2, 0)

  mag, ang = cv2.cartToPolar(flow[...,0], flow[...,1])      
  hsv[...,0] = ang*180/np.pi/2
  #hsv[...,2] = cv2.normalize(mag,None,0,255,cv2.NORM_MINMAX)
  hsv[...,2] = (mag > magnitude_threshold) * 255

  bgr = cv2.cvtColor(hsv,cv2.COLOR_HSV2BGR)

  num_of_thres_traj = np.count_nonzero(mag > magnitude_threshold)
  print "Frame: %d -> %d"%(frame_num, num_of_thres_traj)
  
  if num_of_thres_traj > min_mag_thres_traj:
    status = 0

  else:
    status = 30

  background = Image.fromarray(frame2).convert("RGBA")
  overlay = Image.fromarray(bgr).convert("RGBA")
  new_img = Image.blend(background, overlay, 0.2)

  cv2.imshow('frame2', np.array(new_img))
  k = cv2.waitKey(status) & 0xff
  if k == 27:
    break
  elif k == ord('s'):
    cv2.imwrite('opticalfb.png',frame2)
    cv2.imwrite('opticalhsv.png',np.array(new_img))

  prvs = next
  frame_num +=1

cap.release()
cv2.destroyAllWindows()
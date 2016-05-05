import cv2
import numpy as np
import Image
from constants import *  
from tools import * 
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
  hsv[...,0] = 255 # ang*180/np.pi/2
  hsv[...,2] = cv2.normalize(mag,None,0,255,cv2.NORM_MINMAX)
  bgr = cv2.cvtColor(hsv,cv2.COLOR_HSV2BGR)

  num_of_thres_traj = np.count_nonzero(mag > magnitude_threshold)
  print "Frame: %d -> %d"%(frame_num, num_of_thres_traj)
  
  if num_of_thres_traj > min_mag_thres_traj:
    status = 0

    height = mag.shape[0]
    width = mag.shape[1]

    # mag_f = mag.flatten()
    # ang_f = ang.flatten()
    
    point_indexes = np.asarray(np.where(mag > magnitude_threshold)).T

    visited = np.zeros_like(mag, dtype = np.int)
    clusters = np.zeros_like(mag, dtype = np.int)

    clus = 1
    
    for item in point_indexes:
      i = item[0]
      j = item[1]

      if visited[i,j] == 0:
        queue = list()
        queue.append([i,j])

        while (len(queue) != 0):
          indx = queue.pop()
          i = indx[0]
          j = indx[1]

          visited[i,j] = 1
          clusters[i,j] = clus

          if i+1 < height:
            if visited[i+1,j] == 0:
              if check_distance(mag[i,j],mag[i+1,j], ang[i,j], ang[i+1,j]):
                queue.append([i+1,j])

          if i-1 >= 0:
            if visited[i-1,j] == 0:
              if check_distance(mag[i,j],mag[i-1,j], ang[i,j], ang[i-1,j]):
                queue.append([i-1,j])
   
          if j+1 < width:
            if visited[i,j+1] == 0:
              if check_distance(mag[i,j],mag[i,j+1], ang[i,j], ang[i,j+1]):
                queue.append([i,j+1])

          if j-1 >= 0:
            if visited[i,j-1] == 0:
              if check_distance(mag[i,j],mag[i,j-1], ang[i,j], ang[i,j-1]):
                queue.append([i,j-1])      

        clus += 1

    print clus

    #Rescale to 0-255 and convert to uint8
    rescaled = (255.0 / clusters.max() * (clusters - clusters.min())).astype(np.uint8)
    cv2.imshow('frame2', rescaled)
    cv2.waitKey(0)
    

  else:
    status = 30

  cv2.imshow('frame2', bgr)
  k = cv2.waitKey(status) & 0xff
  if k == 27:
    break
  elif k == ord('s'):
    cv2.imwrite('opticalfb.png',frame2)
    cv2.imwrite('opticalhsv.png',bgr)

  prvs = next
  frame_num +=1

cap.release()
cv2.destroyAllWindows()
import cv2

import numpy as np
from PIL import Image
from scipy.ndimage import filters,measurements,morphology
import cPickle

from constants import *
from tools import *

from math import *

# {* Shynggys *}
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

# probability map
def probability_map(frame2):
  # probability map generation
  height = frame2.shape[0]
  width = frame2.shape[1]
  imgr = frame2.reshape(height * width, frame2.shape[2])
  val = clfNB.predict_proba(imgr)
  val = val.reshape(height, width, 2)
  gray = np.uint8(val[...,0]*255)

  # threshold gray
  # gray_thres = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY, 11, 2)
  # gray_thres = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11, 2)

   # Otsu's thresholding after Gaussian filtering
  blur = cv2.GaussianBlur(gray,(5,5),0)
  ret, gray_thres_gaus = cv2.threshold(blur,0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)

  return gray_thres_gaus

# {* end Shynggys *}




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
    # {* Shynggys *}
    # initializing left and right ends of segment
    for index, t in enumerate(trajectories):
      if not (index in left):
        left[index] = 0
          

      # calculate and check variance
      if len(t) - left[index] <= SEGMENT_SIZE:
         
        # find mean
        sum_angles = 0

        for i in range(left[index], len(t) - 1):
          mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])
          sum_angles += ang[0][0]
        mean = sum_angles / (len(t) - left[index] - 1)

        # find variance
        variance = 0
        
        for i in range(left[index], len(t) - 1):
          mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])
          variance += (ang[0][0] - mean)*(ang[0][0] - mean)
        
        variance /= (len(t) - left[index] - 1)


        # check for peak    
        if variance > VAR_TH:
          max_dist = 0
          peak = -1
          for i in range(left[index] + 1, len(t) - 1):
            distance = dist(t[left[index]], t[len(t) - 1], t[i])
            if distance > max_dist:
              max_dist = distance
              peak = i
          
          if peak != -1:
            frame_n = frame_num - (len(t) - peak - 2)
            if not (frame_n in ip):
              ip.setdefault(frame_n, [])
            ip[frame_n].append(t[peak])
            
            left[index] = peak

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

  # print np.count_nonzero(labels == 0)

  # centers = measurements.center_of_mass(points_opening,labels,[1,2,3,4,5,6,7])
  # print centers

  # mov_indexes = np.where(labels != 0) # get all indexes of non-zero label

  # probability map generation
  height = frame2.shape[0]
  width = frame2.shape[1]
  gray_thres_gaus = probability_map(frame2)  

  # find intersection of movement image and skin probability map
  movement = np.uint8(movement)
  intersection = movement
  cv2.bitwise_and(movement, gray_thres_gaus, intersection)
  
  # {* Shynggys *}
  # number of points that stop
  num_points = 0
  npoints = []
  # {* end Shynggys *}
  
  for index, t in enumerate(trajectories):
    x_prev = t[len(t)-1][0]
    y_prev = t[len(t)-1][1]

    # end test
    xx = min(max(x_prev,0),width -1)
    yy = min(max(y_prev,0),height -1)

    x = x_prev + int(flow[yy, xx, 0])
    y = y_prev + int(flow[yy, xx, 1])


    t.append([x,y])



    # {* Shynggys *}
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
      # find mean
      sum_angles = 0

      for i in range(left[index], len(t) - 1):
        mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])
        sum_angles += ang[0][0]
      mean = sum_angles / (len(t) - left[index] - 1)

      # find variance
      variance = 0
      
      for i in range(left[index], len(t) - 1):
        mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])
        variance += (ang[0][0] - mean)*(ang[0][0] - mean)
      
      variance /= (len(t) - left[index] - 1)


      # check for peak    
      if variance > VAR_TH:
        max_dist = 0
        peak = -1
        for i in range(left[index] + 1, len(t) - 1):
          distance = dist(t[left[index]], t[len(t) - 1], t[i])
          if distance > max_dist:
            max_dist = distance
            peak = i
        
        if peak != -1:
          frame_n = frame_num - (len(t) - peak - 2)
          if not (frame_n in ip):
            ip.setdefault(frame_n, [])
          ip[frame_n].append(t[peak])

          # checking the first part for variance
          for i in range(left[index], peak):
            mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])
            sum_angles += ang[0][0]
          mean = sum_angles / (peak - left[index])

          # find variance
          variance = 0
            
          for i in range(left[index], peak):
            mag, ang = cv2.cartToPolar(t[i+1][0] - t[i][0], t[i+1][1] - t[i][1])        
            variance += (ang[0][0] - mean)*(ang[0][0] - mean)
          
          variance /= (peak - left[index])
          max_dist = 0
          peak_inter = -1
          for i in range(left[index] + 1, peak):            
            distance = dist(t[left[index]], t[peak], t[i])
            if distance > max_dist:
              max_dist = distance
              peak_inter = i
  
          if peak_inter != -1:
            frame_n = frame_num - (peak - peak_inter)       
            if not (frame_n in ip):
              ip.setdefault(frame_n, [])
            ip[frame_n].append(t[peak_inter])
          
          left[index] = peak

    # {* end Shynggys *}

     

    cv2.line(frame2, (x_prev, y_prev), (x, y), (0,255,0), 1)

  # {* Shynggys *}
  # check whether the number of points that stop is enough
  if num_points > NPOINTS:
    print "number of points = " + str(num_points)
    mask = cv2.dilate(probability_map(frame2), kernel, iterations = 1)
    points = dense_sample(next, mask, points)

    for p in points:
      trajectories.append([p])

      cv2.circle(frame2, (p[0],p[1]), 1, (0,255,0))

    for item in npoints:
      if not (frame_num in ip):
        ip.setdefault(frame_num, [])
      ip[frame_num].append(item)
  # {* end Shynggys *}

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





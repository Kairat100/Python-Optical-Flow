import cv2

import numpy as np
from PIL import Image
from scipy.ndimage import filters,measurements,morphology
import cPickle

from constants import *
from tools import *

from math import *

# {* Shynggys *}
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
# {* end Shynggys *}



# {* Shynggys *}

# interest points
ip = dict() 

# store left and right of the segment
left = {}
index = 0

# {* end Shynggys *}

t = [[1,1], [2,5], [3,7], [5,9], [7,11], [5,13], [3,15], [1,17], [3,19], [5,17], [7,15], [9, 19], [11, 21], [13,19], [15,17], [17,15], [19,13], [17,13], [15,11], [13, 13]]
# {* Shynggys *}
# initializing left and right ends of segment
if not (index in left):
  left[index] = 0   
while (1):
  if len(t) - left[index] < 10:
    break
  # calculate and check variance
  if len(t) - left[index] >= segment_size:  
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
    if variance > var_th:
      max_dist = 0
      peak = -1
      for i in range(left[index] + 1, len(t) - 1):
        distance = dist(t[left[index]], t[len(t) - 1], t[i])
        if distance > max_dist:
          max_dist = distance
          peak = i
      
      if peak != -1:
        frame_n = peak
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
          frame_n = peak_inter
          if not (frame_n in ip):
            ip.setdefault(frame_n, [])
          ip[frame_n].append(t[peak_inter])
        
        left[index] = peak

  # {* end Shynggys *}

  print ip

   


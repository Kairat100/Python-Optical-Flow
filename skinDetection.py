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

# probability map
def probability_map(frame2, clfNB):
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
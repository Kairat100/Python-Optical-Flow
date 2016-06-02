import numpy as np
import cv2
from constants import *

def check_distance(magnitude1, magnitude2, angle1, angle2):
	same = True

	if abs(magnitude1 - magnitude2) > magnitude_dis:
		same = False

	if abs(angle1 - angle2) > angle_dis:
		same = False

	return same

def dense_sample(grey, mask, points, quality = quality, min_distance = min_distance):
	width = grey.shape[1] / min_distance
	height = grey.shape[0] / min_distance

	eig = np.zeros((grey.shape[0], grey.shape[1]), np.float32)

	cv2.cornerMinEigenVal(src = grey, blockSize = 3, dst = eig, ksize = 3)

	minVal, maxVal, minLoc, maxLoc = cv2.minMaxLoc(eig, mask) # remove if needed

	threshold = maxVal * quality
	counters = np.zeros(width * height, np.uint)
	x_max = min_distance * width
	y_max = min_distance * height

	for p in points:
		x = p[0]
		y = p[1]

		if x >= x_max or y >= y_max:
			continue

		x /= min_distance
		y /= min_distance
		counters[y * width + x] += 1


	new_points = []
	index = 0
	offset = min_distance / 2

	for i in range(height):
		for j in range(width):

			if counters[index] > 0:
				continue

			x = j * min_distance + offset
			y = i * min_distance + offset
			
			if(eig[y, x] > threshold and mask[y, x] == 255):
				new_points.append([x,y]);

			index += 1

	return new_points

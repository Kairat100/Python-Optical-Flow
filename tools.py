import numpy as np
from constants import *  

def check_distance(magnitude1, magnitude2, angle1, angle2):
	same = True

	if abs(magnitude1 - magnitude2) > magnitude_dis:
		same = False

	if abs(angle1 - angle2) > angle_dis:
		same = False

	return same
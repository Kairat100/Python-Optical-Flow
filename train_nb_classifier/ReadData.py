import numpy as np
from sklearn.cross_validation import train_test_split

def getColors():
	f = open('Skin_NonSkin.txt', 'r')
	X = []
	y = []

	while True:
	    line = f.readline()
	    if not line: break
	    items = line.split()
	    features = np.array([int(items[0]), int(items[1]), int(items[2])])
	    label = int(items[3])

	    X.append(features)
	    y.append(label)

	X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.1, random_state=42)

	return X_train, X_test, y_train, y_test
import numpy as np
import cv2
import cPickle

from ReadData import getColors
from NBClassifier import classify

# get data from 
X_train, X_test, y_train, y_test = getColors()

# Train model with Naive Bayes
clf = classify(X_train, y_train)
print "accuracy:", clf.score(X_test,y_test)

# save the classifier
with open('Skin_color_NBclassifier.pkl', 'wb') as fid:
    cPickle.dump(clf, fid)    

# # Example how to load file
# with open('Skin_color_NBclassifier.pkl', 'rb') as fid:
#     clfNB = cPickle.load(fid)

# Test how it's work

img = cv2.imread('5.jpg')
height = img.shape[0]
width = img.shape[1]

img = img.reshape(height * width, img.shape[2])
val = clf.predict_proba(img)
val = val.reshape(height, width, 2)

gray = np.uint8(val[...,1]*255)

cv2.imwrite('result.jpg',gray)
cv2.imshow('result',gray)
cv2.waitKey(0)

# import scipy.misc
# scipy.misc.imsave('outfile.jpg', gray)
# image = scipy.misc.toimage(gray)

# from PIL import Image
# im = Image.open("5.jpg") #Put your picture here
# pix = im.load()
# prob_map = Image.new('RGB', im.size)
# prob_map_pix = prob_map.load()


# for i in range(im.size[0]):
# 	for j in range(im.size[1]):
# 		val = clf.predict_proba(np.array(pix[i,j]).reshape(1, -1))[0,1]
# 		prob_map_pix[i,j] = (int(val*255), int(val*255), int(val*255))

# prob_map.save("result.jpg", "JPEG")
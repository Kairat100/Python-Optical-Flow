from PIL import Image
from numpy import *
from pylab import *
import cv2
import lktrack

# imnames = ['d/viff.000.ppm', 'd/viff.001.ppm', 'd/viff.002.ppm', 'd/viff.003.ppm', 'd/viff.004.ppm']
# imnames = ['a1/a1[39].jpg', 'a1/a1[40].jpg', 'a1/a1[41].jpg', 'a1/a1[42].jpg', 'a1/a1[43].jpg', 'a1/a1[44].jpg', 'a1/a1[45].jpg', 'a1/a1[46].jpg', 'a1/a1[47].jpg', 'a1/a1[48].jpg', 'a1/a1[49].jpg']
# imnames = ['s1/sing[69].jpg', 's1/sing[70].jpg', 's1/sing[71].jpg', 's1/sing[72].jpg', 's1/sing[73].jpg', 's1/sing[74].jpg']
imnames = ['s2/sing[78].jpg', 's2/sing[79].jpg', 's2/sing[80].jpg', 's2/sing[81].jpg', 's2/sing[82].jpg', 's2/sing[83].jpg', 's2/sing[84].jpg', 's2/sing[85].jpg', 's2/sing[86].jpg', 's2/sing[87].jpg', 's2/sing[88].jpg']

# track using the LKTracker generator
lkt = lktrack.LKTracker(imnames)

for im,ft in lkt.track():
	print 'tracking %d features' % len(ft)

# plot the tracks
figure()
imshow(im)
for p in ft:
	plot(p[0],p[1],'bo')
for t in lkt.tracks:
	plot([p[0] for p in t],[p[1] for p in t])
axis('off')
show()
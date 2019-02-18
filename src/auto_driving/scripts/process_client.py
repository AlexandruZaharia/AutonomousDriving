#!/usr/bin/env python
import sys
import rospy
from auto_driving.srv import *
import cv2
from build import TFNet


def detection_client(x, y):
	rospy.wait_for_service('detection')
	try:
		detect = rospy.ServiceProxy('detection', Detection)
		response = detect(x, y)
		return response.max
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e

def usage():
	return "%s [%s %s]"%sys.argv[0]

if __name__ == "__main__":
	if len(sys.argv) == 3:
		x = int(sys.argv[1])
		y = int(sys.argv[2])
	else:
		print usage()
		sys.exit(1)
	print "Requesting max(%s, %s)"%(x, y)
	print "max(%s, %s) = %s"%(x, y, detection_client(x, y))

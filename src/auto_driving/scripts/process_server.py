#!/usr/bin/env python
from auto_driving.srv import *
import rospy

def handle_detection(req):
	print "Returning max(%s, %s)"%(req.a, req.b)
	return DetectionResponse(max(req.a, req.b))

def detection_server():
	rospy.init_node('detection_server')
	m = rospy.Service('detection', Detection, handle_detection)
	print "Ready to detect for you!"
	rospy.spin()

if __name__ == '__main__':
	detection_server()


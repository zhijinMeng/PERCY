#!/usr/bin/python3

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

class ImageSaver:
    def __init__(self):
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.image_callback)
        self.fixed_image_pub = rospy.Publisher('fixed_video',Image,queue_size=10)
        self.video_writer = None  # Initialize video_writer to None

    def image_callback(self, msg):
        # fix the time header 
        msg.header.stamp = rospy.Time.now()
        # republish the fixed timestamp through the publisher
        self.fixed_image_pub.publish(msg)
        return


if __name__ == '__main__':
    rospy.init_node('image_saver', anonymous=True)
    ImageSaver()
    rospy.spin()


#!/usr/bin/python3

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

class ImageSaver:
    def __init__(self, output_path):
        self.output_path = output_path
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.image_callback)
        self.video_writer = None  # Initialize video_writer to None

    def image_callback(self, msg):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            rospy.logerr(e)
            return

        cv2.imshow('Camera Feed', cv_image)
        cv2.waitKey(1)

        # Check if video_writer is initialized before writing frames
        if self.video_writer is not None:
            self.video_writer.write(cv_image)

    def run(self):
        fourcc = cv2.VideoWriter_fourcc(*'mp4v')
        # self.output_path = "/home/ubuntu/pt0/src/DATA/"+str(self.output_path)+'.mp4'
        self.video_writer = cv2.VideoWriter(self.output_path, fourcc, 3.0, (640, 480))

        rospy.spin()

        if self.video_writer is not None:
            self.video_writer.release()

if __name__ == '__main__':
    rospy.init_node('image_saver', anonymous=True)

    output_path = rospy.get_param('~id', '0')
    # output_path = "/data_recorded/" + output_path+'.mp4'  # Set the correct path
    output_path = "/home/robocupathome/workspace/eddy_code/src/DATA/" + str(output_path)+'.mp4'  # Set the correct path
    image_saver = ImageSaver(output_path)
    image_saver.run()
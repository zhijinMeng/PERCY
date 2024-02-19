#!/usr/bin/env python

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class DepthImageSaver:
    def __init__(self, output_path):
        self.output_path = output_path
        self.bridge = CvBridge()
        self.depth_sub = rospy.Subscriber('/teraranger_evo_thermal/rgb_image', Image, self.depth_image_callback)

    def depth_image_callback(self, msg):
        try:
            # Convert depth image to a meaningful visualization
            # depth_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding="passthrough")
            depth_image = self.bridge.imgmsg_to_cv2(msg)
            

        except CvBridgeError as e:
            rospy.logerr(e)
            return

        # Display the depth image
        cv2.imshow('Depth Image', depth_image)
        cv2.waitKey(1)

        # Save the depth image to a video file
        rospy.loginfo(depth_image.shape)
        rospy.loginfo(depth_image.dtype)
        self.video_writer.write(depth_image)

    def run(self):
        # Define video writer
        fourcc = cv2.VideoWriter_fourcc(*'XVID')  # You can also use 'XVID'
        self.video_writer = cv2.VideoWriter(self.output_path, fourcc, 3.0, (640, 480))
        if not self.video_writer.isOpened():
            rospy.logerr("Error opening video writer!")

        rospy.spin()

        # Release the video writer when the node is shutting down
        self.video_writer.release()
        if self.video_writer is not None:
            self.video_writer.release()
            rospy.loginfo("Video writer released.")

if __name__ == '__main__':
    rospy.init_node('depth_image_saver', anonymous=True)

    output_path = rospy.get_param('~output_path', 'output_depth.mp4')
    depth_saver = DepthImageSaver(output_path)
    depth_saver.run()

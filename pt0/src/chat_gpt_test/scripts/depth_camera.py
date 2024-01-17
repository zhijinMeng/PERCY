#!/usr/bin/env python

import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class DepthImageSaver:
    def __init__(self, output_path):
        self.output_path = output_path
        self.bridge = CvBridge()
        self.video_writer = None
        self.depth_sub = rospy.Subscriber('/teraranger_evo_thermal/rgb_image', Image, self.depth_image_callback)

    def depth_image_callback(self, msg):
        try:
            # Convert depth image to a meaningful visualization
            depth_image = self.bridge.imgmsg_to_cv2(msg)

            # Scale depth values to fit within the [0, 255] range
            depth_image_scaled = cv2.convertScaleAbs(depth_image, alpha=(255.0 / depth_image.max()))

            # Display the scaled depth image
            cv2.imshow('Depth Image', depth_image_scaled)

            # Save the depth image to a video file
            if self.video_writer is not None:
                self.video_writer.write(depth_image_scaled)

        except CvBridgeError as e:
            rospy.logerr(e)
            return

        # Check for keyboard interrupt (Ctrl+C)
        key = cv2.waitKey(1) & 0xFF
        if key == 27:  # 27 is the ASCII code for 'Esc'
            rospy.signal_shutdown("User interrupted")

    def run(self):
        # Define video writer
        fourcc = cv2.VideoWriter_fourcc(*'XVID')  # You can also use 'XVID'
        self.video_writer = cv2.VideoWriter(self.output_path, fourcc, 3.0, (512, 512))  # Adjust dimensions as needed
        if not self.video_writer.isOpened():
            rospy.logerr("Error opening video writer!")
            return

        try:
            while not rospy.is_shutdown():
                rospy.sleep(0.1)  # Adjust sleep time based on your needs

        except rospy.ROSInterruptException:
            rospy.loginfo("ROS node interrupted.")

        finally:
            # Release the video writer when the node is shutting down
            if self.video_writer is not None:
                self.video_writer.release()
                rospy.loginfo("Video writer released.")

if __name__ == '__main__':
    rospy.init_node('depth_image_saver', anonymous=True)

    output_path = rospy.get_param('~output_path', 'output_depth.mp4')
    depth_saver = DepthImageSaver(output_path)
    depth_saver.run()

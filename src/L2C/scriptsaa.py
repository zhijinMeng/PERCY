#!/usr/bin/python3
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import argparse  # Ensure argparse is imported
from basetrainer.utils import setup_config
from demo import Predictor

class RobotCameraEmotionDetector:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('robot_camera_emotion_detector')

        # Initialize the CvBridge for converting ROS images to OpenCV images
        self.bridge = CvBridge()

        # Set up a subscriber to the robot's camera image topic
        self.image_subscriber = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.image_callback)

        # Get the parsed arguments directly
        parser = self.get_parser()
        args = parser.parse_args()

        # Load the configuration using the namespace returned by `parse_args`
        cfg = setup_config.parser_config(args, cfg_updata=False)

        # Initialize the emotion detection model from demo.py
        self.predictor = Predictor(cfg)

    def get_parser(self):
        """Copied directly from demo.py for this specific script."""
        config_file = "configs/config.yaml"
        model_file = "data/pretrained/mobilenet_v2_1.0_CrossEntropyLoss_20230313090258/model/latest_model_099_94.7200.pth"
        image_dir = "data/test_image"
        video_file = None

        parser = argparse.ArgumentParser(description="Inference Argument")
        parser.add_argument("-c", "--config_file", help="configs file", default=config_file, type=str)
        parser.add_argument("-m", "--model_file", help="model_file", default=model_file, type=str)
        parser.add_argument("--device", help="cuda device id", default="cpu", type=str)
        parser.add_argument("--image_dir", help="image file or directory", default=image_dir, type=str)
        parser.add_argument('--video_file', type=str, default=video_file, help='camera id or video file')
        parser.add_argument('--out_dir', type=str, default="output", help='save det result image')
        return parser

    def image_callback(self, image_msg):
        """Callback function for processing incoming camera images."""
        # Convert ROS Image message to an OpenCV image
        cv_image = self.bridge.imgmsg_to_cv2(image_msg, "bgr8")

        # Convert to RGB for compatibility with the predictor
        rgb_image = cv2.cvtColor(cv_image, cv2.COLOR_BGR2RGB)

        # Use the Predictor to detect faces and classify emotions
        pred_index, pred_score, dets = self.predictor.task(rgb_image)

        # Check if there are any valid detections
        if dets is not None and len(dets) > 0:
            # Ensure that we have valid labels (even if no prediction scores are available)
            pred_index = pred_index if pred_index is not None else []
            pred_score = pred_score if pred_score is not None else []

            # Print the detected emotions by indexing into the emotion list
            detected_emotions = [self.predictor.listemo[idx] for idx in pred_index]
            print(f"Detected emotions: {detected_emotions}")

            # Annotate the image with detections
            annotated_image = self.predictor.show_image(rgb_image, dets, pred_score, pred_index, use_rgb=True, vis=False)
        else:
            # If no detections, simply return the unannotated image
            annotated_image = rgb_image

        # Convert back to BGR for OpenCV display
        annotated_image = cv2.cvtColor(annotated_image, cv2.COLOR_RGB2BGR)

        # Display the annotated image in a window
        cv2.imshow("Robot Camera - Emotion Detection", annotated_image)
        cv2.waitKey(1)


if __name__ == "__main__":
    # Create the RobotCameraEmotionDetector object
    detector = RobotCameraEmotionDetector()

    # Keep the program running with ROS
    rospy.spin()


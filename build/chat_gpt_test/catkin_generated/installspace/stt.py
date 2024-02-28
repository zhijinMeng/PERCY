#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
# from pocketsphinx import LiveSpeech

class SpeechToText:
    def __init__(self):
        rospy.init_node('speech_to_text_node', anonymous=True)
        rospy.Subscriber('/humans/voices/anonymous_speaker/speech', String, self.audio_callback)
        self.text_publisher = rospy.Publisher('/recognized_text', String, queue_size=10)
        # self.speech = LiveSpeech()

    def audio_callback(self, audio_data):
        rospy.loginfo("Received audio data")
        text = self.recognize_speech(audio_data.data)
        self.text_publisher.publish(text)

    def recognize_speech(self, audio_data):
        # Implement your speech recognition logic here
        # For simplicity, we'll use the 'pocketsphinx' library
        # Note: pocketsphinx might not be suitable for all applications, consider using more advanced libraries for production systems
        recognized_text = ""
        for phrase in self.speech:
            recognized_text = str(phrase)
            break  # Stop after the first recognized phrase
        return recognized_text

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        speech_to_text_node = SpeechToText()
        speech_to_text_node.run()
    except rospy.ROSInterruptException:
        pass

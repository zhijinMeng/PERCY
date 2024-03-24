#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from google.cloud import speech_v1p1beta1 as speech

def audio_callback(data):
    # Initialize the Speech-to-Text client
    client = speech.SpeechClient()

    # Configure audio settings
    config = {
        "language_code": "en-US",
        "sample_rate_hertz": 16000,  # Adjust based on your audio sample rate
        "encoding": speech.enums.RecognitionConfig.AudioEncoding.LINEAR16,
    }

    # Process the raw audio data
    audio = {"content": data.data}

    # Perform the transcription
    response = client.recognize(config=config, audio=audio)

    # Process the transcription results
    for result in response.results:
        rospy.loginfo("Transcription: %s", result.alternatives[0].transcript)

def main():
    rospy.init_node("ros_speech_to_text")
    rospy.Subscriber("/audio/channel0", String, audio_callback)
    rospy.spin()

if __name__ == "__main__":
    main()

#!/usr/bin/python3

import rospy
from std_msgs.msg import String
from google.cloud import speech_v1p1beta1 as speech
import numpy as np

def audio_callback(data):
    # Print the received data
    rospy.loginfo("Received data: %s", data.data)

    # Initialize the Speech-to-Text client
    client = speech.SpeechClient()

    # Configure streaming audio settings
    config = {
        "language_code": "en-US",
        "sample_rate_hertz": 16000,  # Adjust based on your audio sample rate
        "encoding": speech.enums.RecognitionConfig.AudioEncoding.LINEAR16,
    }

    # Convert raw audio data to int16 (assuming it's 8-bit PCM)
    raw_audio_uint8 = np.frombuffer(data.data, dtype=np.uint8)
    audio_data_int16 = raw_audio_uint8.astype(np.int16)

    # Convert audio data to LINEAR16 byte string
    audio_bytes = audio_data_int16.tobytes()

    # Initialize the streaming request
    streaming_request = speech.StreamingRecognizeRequest(
        streaming_config=speech.StreamingRecognitionConfig(config=config, interim_results=True)
    )

    # Process the raw audio data
    audio = {"content": audio_bytes}
    rospy.loginfo("Received audio data")

    # Stream audio data to the API and handle transcriptions
    response_stream = client.streaming_recognize(streaming_request, audio_content=[audio])

    # Process the transcription results
    for response in response_stream:
        for result in response.results:
            if result.is_final:
                rospy.loginfo("Final Transcription: %s", result.alternatives[0].transcript)
            else:
                rospy.loginfo("Interim Transcription: %s", result.alternatives[0].transcript)

def main():
    rospy.loginfo`("Starting ROS Speech-to-Text Node")
    rospy.init_node("ros_speech_to_text")
    rospy.Subscriber("/audio/channel0", String, audio_callback)
    rospy.spin()

if __name__ == "__main__":
    main()

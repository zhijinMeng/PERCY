#!/usr/bin/python3

import rospy
from audio_common_msgs.msg import AudioData
from google.cloud import speech_v1p1beta1 as speech
import numpy as np

AUDIO_RATE = 16000


def audio_callback(data):
    rospy.loginfo("Received audio data")

    # Convert raw audio data to int16 (assuming it's 8-bit PCM)
    raw_audio_uint8 = np.frombuffer(data.data, dtype=np.uint8)
    audio_data_int16 = raw_audio_uint8.astype(np.int16)

    # Initialize the Speech-to-Text client
    client = speech.SpeechClient()

    # Configure recognition settings
    config = speech.RecognitionConfig(
        encoding=speech.RecognitionConfig.AudioEncoding.LINEAR16,
        sample_rate_hertz=AUDIO_RATE,
        language_code="en-US",
    )

    # Configure streaming recognition settings
    streaming_config = speech.StreamingRecognitionConfig(
        config=config, interim_results=True
    )

    # Convert audio data to LINEAR16 byte string
    audio_bytes = audio_data_int16.tobytes()

    # Initialize the streaming request
    streaming_request = speech.StreamingRecognizeRequest(
        audio_content=audio_bytes
    )

    # Check the type of the streaming request
    if isinstance(streaming_request, speech.StreamingRecognizeRequest):
        # Proceed with the request
        rospy.loginfo("Streaming request type is valid.")
    else:
        rospy.logerr("Streaming request has an unexpected type.")

    # Stream audio data to the API and handle transcriptions
    response_stream = client.streaming_recognize(streaming_config, streaming_request)

    # Process the transcription results
    for response in response_stream:
        for result in response.results:
            transcription = result.alternatives[0].transcript
            rospy.loginfo("Transcription: %s", transcription)

def main():
    rospy.init_node("speech_to_text")
    rospy.loginfo("ROS Speech-to-Text node started.")

    # Subscriber for audio data
    rospy.Subscriber("/audio/channel0", AudioData, audio_callback)

    rospy.spin()

if __name__ == "__main__":
    main()

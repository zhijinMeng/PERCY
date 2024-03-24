import rospy
from std_msgs.msg import String
from google.cloud import speech
import sys

print(sys.version)
# Initialize ROS node
rospy.init_node('speech_to_text')

# Create a ROS subscriber to listen for audio data
def audio_callback(data):
    transcribe_audio(data.data)

rospy.Subscriber('audio/channel0', String, audio_callback)  # Subscribe to 'audio/channel0' topic

# Google Cloud Speech API client
client = speech.SpeechClient()
print('here')
def transcribe_audio(audio_data):
    # Perform transcription using Google Cloud Speech API
    audio = speech.RecognitionAudio(content=audio_data)
    config = speech.RecognitionConfig(
        encoding=speech.RecognitionConfig.AudioEncoding.LINEAR16,
        sample_rate_hertz=16000,
        language_code="en-US",
    )

    response = client.recognize(config=config, audio=audio)

    for result in response.results:
        print(f"Transcription: {result.alternatives[0].transcript}")

# Keep ROS node running
rospy.spin()

#!/usr/bin/env python3

import rospy
import wave
import webrtcvad
from datetime import datetime
from threading import Timer
import sys
from chatting_system.msg import AudioStamped
from openai import OpenAI
from gpt_server.srv import GPTGenerate, GPTGenerateResponse, GPTGenerateRequest
from pal_interaction_msgs.msg import TtsAction, TtsGoal, TtsFeedback
from hri_msgs.msg import Expression
from actionlib import SimpleActionClient

sys.path.insert(0, '/home/ari/ros_ws/eddy_code/src/chatting_system/scripts')

# Parameters
VAD_MODE = 3  # 0: very sensitive, 3: least sensitive
AUDIO_SAVE_PATH = '/home/ari/ros_ws/eddy_code/src/chatting_system/DATA/'
GAP_THRESHOLD = 1.5  # in seconds
client = OpenAI(api_key="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")


class AudioSaver:
    def __init__(self):
        self.vad = webrtcvad.Vad(VAD_MODE)
        self.audio_buffer = []
        self.speech_timer = None
        self.current_timestamp = None
        self.subscriber = None
        self.is_speaking = False
        self.is_listening = False

        rospy.loginfo('Waiting for GPT server to be available...')
        self.gptServer = rospy.ServiceProxy('/gpt_generate', GPTGenerate)  # Connecting to GPT server
        self.gptServer.wait_for_service()
        rospy.loginfo('Successfully connected to /gpt_generate')
        
        # Initialize TTS client
        self.tts = SimpleActionClient('/tts', TtsAction)
        self.tts.wait_for_server()

        # Initialize facial expression publisher
        self.faceExpressionPub = rospy.Publisher('/face_expression', Expression, queue_size=10)

        # Subscribe to TTS feedback
        self.tts_feedback_sub = rospy.Subscriber("/tts/feedback", TtsFeedback, self.tts_feedback_callback)

    def start_listener(self):
        if not self.subscriber and not self.is_listening:
            self.subscriber = rospy.Subscriber("external_microphone", AudioStamped, self.audio_callback)
            self.is_listening = True
            rospy.loginfo("Audio listener started.")

    def stop_listener(self):
        if self.subscriber:
            self.subscriber.unregister()
            self.subscriber = None
            self.is_listening = False
            rospy.loginfo("Audio listener stopped.")

    def save_audio_to_file(self):
        if self.audio_buffer:  # Only save if buffer has data
            filename = f"{AUDIO_SAVE_PATH}audio_{self.current_timestamp}.wav"
            
            # Concatenate audio buffer
            audio_data = b''.join(self.audio_buffer)
            
            with wave.open(filename, 'wb') as wf:
                wf.setnchannels(1)  # Mono
                wf.setsampwidth(2)  # 16-bit audio
                wf.setframerate(16000)  # 16kHz sample rate
                wf.writeframes(audio_data)
            rospy.loginfo(f"Saved audio to {filename}")
            self.audio_buffer = []  # Clear buffer after saving
            self.whisper_translate(filename, filename.replace('.wav', '.txt'))

    def audio_callback(self, msg):
        if self.is_speaking:
            return  # Ignore incoming audio data while speaking

        # Convert the list of bytes to a bytes object
        audio_data = bytes(msg.data)
        is_speech = self.vad.is_speech(audio_data, 16000)

        if is_speech:
            if self.speech_timer is not None:
                self.speech_timer.cancel()
            if not self.audio_buffer:
                # New speech detected, start a new buffer
                self.current_timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            self.audio_buffer.append(audio_data)
            self.speech_timer = Timer(GAP_THRESHOLD, self.save_audio_to_file)
            self.speech_timer.start()

    def GPTgenerate(self, transcription):
        self.stop_listener()  # Deactivate listener before processing
        
        request = GPTGenerateRequest()
        request.request = transcription
        request.initialEmotion = 'happy'
        request.finalEmotion = 'happy'
        
        try:
            response = self.gptServer(request)
            output = response.response
            
            goal = TtsGoal()
            goal.rawtext.lang_id = 'en_GB'
            goal.rawtext.text = output
            self.tts.send_goal(goal)

            e = Expression()
            e.expression = 'happy'  # Example emotion; replace with actual emotion if needed
            self.faceExpressionPub.publish(e)

            rospy.loginfo(f'Generated response: {output}')
        except rospy.ServiceException as e:
            rospy.logwarn(f"Service call failed: {e}")
            output = None
        # finally:
        #     self.start_listener()  # Reactivate listener after processing

        return output

    def whisper_translate(self, wav_file, txt_file):
        try:
            audio_file = open(wav_file, "rb")
            transcription = client.audio.transcriptions.create(
                model="whisper-1", 
                file=audio_file
            )
            transcription_text = transcription.text.strip()
            word_count = len(transcription_text.split())
            if word_count < 4:
                rospy.loginfo(f"Transcription too short (less than 4 words), skipping.")
                return None

            # Write the transcription to a txt file for further analysis
            with open(txt_file, "w") as output:
                output.write(transcription_text)
                rospy.loginfo(f'Saved transcription as txt file: {txt_file}')
                rospy.loginfo(transcription_text)

                self.response = self.GPTgenerate(transcription_text)  # Send the transcription to GPT server

            return transcription_text
        except Exception as e:
            rospy.logwarn(f"Error during transcription: {e}")
            return None

    def tts_feedback_callback(self, feedback):
        if feedback.feedback.event_type == TtsFeedback.TTS_EVENT_FINISHED_PLAYING_UTTERANCE:
            rospy.loginfo("TTS system finished speaking.")
            self.start_listener()  # Start listening again after the TTS system has finished speaking


def main():
    rospy.init_node('audio_listener', anonymous=True)
    audio_saver = AudioSaver()
    # audio_saver.start_listener()  # Start the listener
    rospy.spin()


if __name__ == '__main__':
    main()
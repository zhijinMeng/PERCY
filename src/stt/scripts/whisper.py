from openai import OpenAI
client = OpenAI(api_key="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")

audio_file= open("/home/robocupathome/workspace/eddy_code/src/stt/scripts/7.wav", "rb")
transcription = client.audio.transcriptions.create(
  model="whisper-1", 
  file=audio_file
)
print(transcription.text)
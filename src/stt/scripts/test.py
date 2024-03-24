import speech_recognition as sr

r = sr.Recognizer()
with sr.AudioFile("./7.wav") as source:
    audio = r.record(source)
    try:
        text = r.recognize_google(audio)
        print("Transcription:", text)
    except sr.UnknownValueError:
        print("Could not understand audio")

# from openai import OpenAI
from openai import OpenAI
import sys
import json

client = OpenAI(api_key="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")

# API_KEY = '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'
# OpenAI.api_key = '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'
messages = [ {"role": "system", "content":  
              "hello, i will give you some information of mine and i" + 
              " need you to ask me questions based on the information that I provied."
              +"one question per time"} ] 
while True: 
    message = input("User : ")
    emotion = "angry"

    message = "say that i am feeling" + emotion + ". now respond with this emotion in account: " + message;  
    if message: 
        if "stop" in message:
            break
        messages.append( 
            {"role": "user", "content": message}, 
        ) 
        chat = client.chat.completions.create(model="gpt-3.5-turbo", messages=messages) 
    reply = chat.choices[0].message.content 
    print(f"ChatGPT: {reply}") 
    messages.append({"role": "assistant", "content": reply})


name = sys.argv[1]
name += '_conversation_history'
file = open(name, 'w')
file.write(json.dumps(messages), indent='4')



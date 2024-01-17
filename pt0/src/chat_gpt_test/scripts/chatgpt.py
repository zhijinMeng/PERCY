from openai import OpenAI
client = OpenAI()

def ask(messages):
    model = "gpt-3.5-turbo"
    response = client.chat.completions.create(
        model=model,
        messages=messages,
    )
    # print(response)
    return response.choices[0].message.content

def start_talking():
    messages = [{"role": "user","content":""}]
    while 1:
        try:
        # print(messages)
            text = input('你：')
            if text == 'quit':
                break

            d = {"role":"user","content":text}
            messages.append(d)

            text = ask(messages)
            d = {"role":"assistant","content":text}
            print('ChatGPT：'+text+'\n')
            messages.append(d)
        except:
            messages.pop()
            print('error\n')

def main():
    start_talking()
    
main()
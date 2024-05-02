import json

JSON_FILE = 'chat_history.json'

def add_input_to_user(json_data):
    for message in json_data:
        print(f"Message: {message['content']}")
        if message["role"] == "user":
            user_input = input("Enter additional parameter: ")
            message["new_parameter"] = user_input
            
            # Write the modified data back to the JSON file after each user message
            with open("modified_chat_history.json", "w", encoding="utf-8") as file:
                json.dump(json_data, file, indent=4, ensure_ascii=False)

def main():
    # Load the JSON file
    with open(JSON_FILE, "r", encoding="utf-8") as file:
        data = json.load(file)
    
    # Add input to user messages
    add_input_to_user(data)

if __name__ == "__main__":
    main()

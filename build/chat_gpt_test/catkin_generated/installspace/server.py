#!/usr/bin/env python3

import rospy
from std_msgs.msg import String  # Import the String message type
from transformers import GPT2LMHeadModel, GPT2Tokenizer

class GPTNode:
    def __init__(self):
        rospy.init_node('gpt_node', anonymous=True)
        rospy.loginfo('GPT node started')
        self.model = GPT2LMHeadModel.from_pretrained('gpt2')
        self.tokenizer = GPT2Tokenizer.from_pretrained('gpt2')

        # Create a subscriber that listens for String messages on the 'input_text' topic
        rospy.Subscriber('input_text', String, self.input_text_callback)

        # Create a publisher that publishes String messages on the 'output_text' topic
        self.output_text_pub = rospy.Publisher('output_text', String, queue_size=10)

    def input_text_callback(self, msg):
        # Callback function to handle incoming text messages
        input_text = msg.data
        generated_text = self.generate_text(input_text)

        # Publish the generated text as a String message on the 'output_text' topic
        self.output_text_pub.publish(String(data=generated_text))

        rospy.loginfo(f"Generated text: {generated_text}")

    def generate_text(self, input_text):
        input_ids = self.tokenizer.encode(input_text, return_tensors='pt')
        output = self.model.generate(input_ids, max_length=50, num_beams=5, no_repeat_ngram_size=2)
        return self.tokenizer.decode(output[0], skip_special_tokens=True)

    def run(self):
        rospy.spin()

if __name__ == '__main__':  
    gpt_node = GPTNode()
    gpt_node.run()

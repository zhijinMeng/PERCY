#! /usr/bin/env python


# Chat GPT code

import rospy

from transformers import GPT2LMHeadModel, GPT2Tokenizer

class GPTNode:
    def __init__(self):
        rospy.init_node('gpt_node', anonymous=True)
        rospy.loginfo('GPT node started')
        self.model = GPT2LMHeadModel.from_pretrained('gpt2')
        self.tokenizer = GPT2Tokenizer.from_pretrained('gpt2')
    
    def generate_text(self, input_text):
        input_ids = self.tokenizer.encode(input_text, return_tensors='pt')
        output = self.get_model.generate(input_ids, max_length=50, num_beams=5, no_repeat_ngram_size = 2)
        return self.tokenizer.decode(output[0], skip_special_tokens=True)

    def run(self):
        rospy.spin()

if __name__ == '__main__':  
    get_node = GPTNode()
    get_node.run()
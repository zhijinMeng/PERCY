import pandas as pd
import json

class QAExtractor:
    def __init__(self, csv_file_path):
        # 初始化并加载CSV文件
        self.df = pd.read_csv(csv_file_path, header=None)
        print("DataFrame shape:", self.df.shape)  # 打印DataFrame的形状来验证数据是否正确加载
        # 问题从索引0行的索引22列开始
        self.questions = self.df.iloc[1, 23:]  # 确保从正确的行和列开始加载问题
        print("Loaded questions:", self.questions)  # 打印问题确保正确加载
        # 答案从索引3行开始
        self.answers = self.df.iloc[3:, 23:]  # 确保从正确的行和列开始加载答案
        # 电子邮件在索引19列
        self.emails = self.df.iloc[3:, 19]  # 加载电子邮件
        print("Sample answers:", self.answers.head())  # 打印前几行答案来验证数据

    def save_qa_pairs_to_files(self):
            for person_index, (email, row) in enumerate(zip(self.emails, self.answers.iterrows()), start=1):
                _, row = row
                qa_pairs = []
                for col_index, question in enumerate(self.questions):
                    if "-" in question:
                        # If the question contains "-", abandon the content including "-" and after it
                        question = question.split("-")[0].strip()
                    answer = row.iloc[col_index]
                    if pd.notna(answer) and answer.strip() != '' and answer.strip().lower() != 'other':
                        qa_pair = {"role": "system", "content": question}, {"role": "user", "content": answer}
                        qa_pairs.append(qa_pair)
                if qa_pairs:
                    # Use the email address as the file name
                    safe_email = email.replace('@', '_at_').replace('.', '_dot_')
                    filename = f"{safe_email}.json"
                    # Only save the list of QA pairs without wrapping it in a dictionary
                    with open(filename, 'w', encoding='utf-8') as file:
                        json.dump(qa_pairs, file, ensure_ascii=False, indent=4)

csv_file_path = '/home/robocupathome/workspace/eddy_code/src/data_processing/Extract_code/Non-Sensitive Personal Information - Multiple Choice Version_May 4, 2024_02.53.csv'
qa_extractor = QAExtractor(csv_file_path)
qa_extractor.save_qa_pairs_to_files()
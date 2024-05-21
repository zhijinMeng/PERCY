import pandas as pd
import json
import os

class QAExtractor:
    def __init__(self, csv_file_path):
        # Initialize and load the CSV file
        self.df = pd.read_csv(csv_file_path, header=None)
        print("DataFrame shape:", self.df.shape)  # Print DataFrame shape to verify data loading
        # Questions start from index 22 in row 0
        self.questions = self.df.iloc[1, 26:]  # Ensure correct starting row and column for loading questions
        print("Loaded questions:", self.questions)  # Print questions to verify correct loading
        # Answers start from row 3
        self.answers = self.df.iloc[3:, 26:]  # Ensure correct starting row and column for loading answers
        # Emails are in column 19
        self.emails = self.df.iloc[3:, 19]  # Load emails
        print("Emails:", self.emails)  # Print emails to verify loading
        print("Sample answers:", self.answers.head())  # Print sample answers to verify data
        self.mappint_list = []

    def save_qa_pairs_to_files(self):
        # Load existing email addresses and person indexes from the JSON file
        existing_data = {}
        if os.path.exists("personindex_email.json"):
            with open("personindex_email.json", 'r', encoding='utf-8') as json_file:
                for line in json_file:
                    if line.strip()=="":
                        continue
                    print("line.rstrip('')",line.rstrip('\n'))
                    data = json.loads(line.rstrip('\n'))
                    existing_data.update(data)
        
        with open("personindex_email.json", 'a', encoding='utf-8') as json_file:
            for person_index, (email, row) in enumerate(zip(self.emails, self.answers.iterrows()), start=1):
                _, row = row
                # Check if the email is new
                if email not in existing_data.values():
                    qa_pairs = []
                    print("Processing person:", person_index, "Email:", email)
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
                        filename = f"{person_index}.json"
                        # Only save the list of QA pairs without wrapping it in a dictionary
                        with open(filename, 'w', encoding='utf-8') as file:
                            json.dump(qa_pairs, file, ensure_ascii=False, indent=4)
                        
                        # Update the JSON file with the new email address and person index
                        existing_data[person_index] = email
                        # Write the updated content of personndex_email_mapping to the file
                        json_file.seek(0)
                        json_file.truncate()
                        for person_index, email in existing_data.items():
                            json_file.write(json.dumps({str(person_index): email}) + '\n')

# Example usage
csv_file_path = "/home/robocupathome/workspace/eddy_code/src/data_processing/Extract_code/Non-Sensitive Personal Information - Multiple Choice Version_May 9, 2024_02.14.csv"
qa_extractor = QAExtractor(csv_file_path)
qa_extractor.save_qa_pairs_to_files()

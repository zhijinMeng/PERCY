import argparse
import csv
import json
import os
import shutil

class QAExtractor:
    def __init__(self, csv_file_path, question_row, question_start_col, question_finish_col, answer_start_row, output_dir):
        self.csv_file_path = csv_file_path
        self.df = self.load_csv(csv_file_path)
        self.question_row = question_row
        self.question_start_col = question_start_col
        self.question_finish_col = question_finish_col
        self.answer_start_row = answer_start_row
        self.output_dir = output_dir
        self.excel_database = "/home/robocupathome/workspace/eddy_code/src/data_processing/excel_database/"
        self.offset_file = "/home/robocupathome/workspace/eddy_code/src/data_processing/offset.txt"

        print("DataFrame shape:", len(self.df))  # Verify data loading

        # Extract questions from the specified row and column range
        self.questions = self.df[question_row][question_start_col:question_finish_col + 1]
        print("Loaded questions:", self.questions)  # Verify correct loading

        # Extract answers from the specified row onward and within the column range
        self.answers = [row[question_start_col:question_finish_col + 1] for row in self.df[answer_start_row:]]
        print("Sample answers:", self.answers[:5])  # Verify data

    def load_csv(self, csv_file_path):
        with open(csv_file_path, 'r') as file:
            reader = csv.reader(file)
            data = [row for row in reader]
        return data

    def save_qa_pairs_to_files(self):
        answer_lst = self.extract_answers()
        print("Extracted answers:", answer_lst)  # Debugging line to verify extracted answers
        output_folder = self.get_output_folder(answer_lst)
        print("Output folder:", output_folder)  # Debugging line to verify output folder creation
        qa_pairs = self.extract_qa_pairs()

        if qa_pairs:
            filename = os.path.join(output_folder, "profile.json")
            with open(filename, 'w', encoding='utf-8') as file:
                json.dump(qa_pairs, file, ensure_ascii=False, indent=4)

            # Copy the original CSV file to the output folder
            shutil.copy(self.csv_file_path, output_folder)
        else:
            print("No valid QA pairs found, skipping file creation.")

    def extract_answers(self):
        answer_lst = {}
        
        for i, question in enumerate(self.questions):
            answer = self.answers[0][i]
            if not answer or 'other' in answer.lower():
                # Handle "other" case
                other_answer = self.answers[0][i + 1] if (i + 1) < len(self.answers[0]) else None
                if other_answer:
                    answer = other_answer
            answer_lst[question] = answer
            print("Question: {}, Answer: {}".format(question, answer))  # Debugging line to verify extracted answers
        return answer_lst

    def get_output_folder(self, answer_lst):
        def map_to_index(answer, options):
            cleaned_answer = answer.split(' (')[0]  # Ignore the index in parentheses
            print("Answer: {}, Cleaned Answer: {}".format(answer, cleaned_answer))  # Debugging line to verify cleaning
            try:
                return str(options.index(cleaned_answer)).zfill(2)
            except ValueError:
                return str(len(options) - 1).zfill(2)

        # Define the options for each question
        gender_options = [
            'Male', 'Female', 'Non-binary/Third gender', 'Prefer not to say', 'Other'
        ]
        age_options = [
            '18-25', '26-30', '31-35', '36-40', '41-45', '46-50',
            '51-55', '56-60', '61-65', 'Other'
        ]
        race_options = [
            'Asian', 'Black or African American', 'Caucasian or White', 'Hispanic or Latino',
            'Indigenous or Aboriginal', 'Middle Eastern', 'Pacific Islander', 'Prefer not to say', 'Other'
        ]
        degree_options = [
            'No formal education', 'Less than high school', 'High school diploma or equivalent', 'Associate degree',
            'Bachelor\'s degree', 'Master\'s degree', 'Doctoral degree', 'Professional degree (e.g., MD, JD)', 'Other'
        ]
        field_options = [
            'Arts and Design', 'Business and Management', 'Education', 'Engineering',
            'Health Sciences', 'Humanities and Social Sciences', 'Natural Sciences', 'Technology and Computer Science', 'Other'
        ]
        job_options = [
            'Student', 'Employee', 'Unemployed', 'Retired', 'Other'
        ]

        # Map each answer to its index
        gender_subname = map_to_index(answer_lst.get('What is your gender identity?', 'Other'), gender_options)
        age_subname = map_to_index(answer_lst.get('Which age group best describes you?', 'Other'), age_options)
        race_subname = map_to_index(answer_lst.get('What\'s your race?', 'Other'), race_options)
        degree_subname = map_to_index(answer_lst.get('What is the highest degree or level of education you have completed?', 'Other'), degree_options)
        field_subname = map_to_index(answer_lst.get('What is your field of study (major)?', 'Other'), field_options)
        job_subname = map_to_index(answer_lst.get('What do you do for work?', 'Other'), job_options)

        print("Mapped indices: {}, {}, {}, {}, {}, {}".format(gender_subname, age_subname, race_subname, degree_subname, field_subname, job_subname))  # Debugging line to verify mapped indices

        # Concatenate subnames
        self.category_name = "{}_{}_{}_{}_{}_{}".format(gender_subname, age_subname, race_subname, degree_subname, field_subname, job_subname)

        output_folder = os.path.join(self.output_dir, self.category_name)
        if not os.path.exists(output_folder):
            os.makedirs(output_folder)
            print("Creating directory: {}".format(output_folder))  # Debugging line to verify directory creation
        
        return output_folder

    def extract_qa_pairs(self):
        qa_pairs = []
        offset = self.get_offset()
        num_questions = len(self.questions)

        for i in range(num_questions):
            col_index = (i + offset) % num_questions
            question = self.questions[col_index]
            if "-" in question:
                question = question.split("-")[0].strip()
            answer = self.answers[0][col_index]  # Only extract the first row for single person
            if answer and answer.strip().lower() != 'other':
                qa_pair = {"role": "system", "content": question}, {"role": "user", "content": answer}
                qa_pairs.append(qa_pair)

        self.increment_offset()
        return qa_pairs

    def get_offset(self):
        if not os.path.exists(self.offset_file):
            with open(self.offset_file, 'w') as file:
                file.write('0')
            return 0
        else:
            with open(self.offset_file, 'r') as file:
                offset = int(file.read().strip())
            return offset

    def increment_offset(self):
        if not os.path.exists(self.offset_file):
            with open(self.offset_file, 'w') as file:
                file.write('1')
        else:
            with open(self.offset_file, 'r') as file:
                offset = int(file.read().strip())
            new_offset = (offset + 1) % len(self.questions)
            with open(self.offset_file, 'w') as file:
                file.write(str(new_offset))

def main():
    parser = argparse.ArgumentParser(description="Process CSV file to extract QA pairs into a JSON file and copy the CSV file.")
    parser.add_argument("csv_name", help="Name of the CSV file (without .csv extension)")
    parser.add_argument("--question_row", type=int, help="Row index where questions are located")
    parser.add_argument("--question_start_col", type=int, help="Column index where questions start")
    parser.add_argument("--question_finish_col", type=int, help="Column index where questions finish")
    parser.add_argument("--answer_start_row", type=int, help="Row index where answers start")

    args = parser.parse_args()
    csv_file_path = "/home/robocupathome/workspace/eddy_code/src/data_processing/excel_database/" + args.csv_name + ".csv"

    question_row = args.question_row if args.question_row is not None else 0
    question_start_col = args.question_start_col if args.question_start_col is not None else 29
    question_finish_col = args.question_finish_col if args.question_finish_col is not None else 50
    answer_start_row = args.answer_start_row if args.answer_start_row is not None else 2

    # Hardcoded output directory
    output_dir = "/home/robocupathome/workspace/eddy_code/src/DATA"

    # Ensure the output directory exists
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Create an instance of QAExtractor with the hardcoded output directory
    qa_extractor = QAExtractor(csv_file_path, question_row, question_start_col, question_finish_col, answer_start_row, output_dir)

    # Call the method to save QA pairs to files
    qa_extractor.save_qa_pairs_to_files()

if __name__ == "__main__":
    main()

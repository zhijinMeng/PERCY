import argparse
import csv
import json
import os
import shutil

class QAExtractor:
    def __init__(self, csv_file_path, question_row, question_start_col, answer_start_row, output_dir):
        self.csv_file_path = csv_file_path
        self.df = self.load_csv(csv_file_path)
        self.question_row = question_row
        self.question_start_col = question_start_col
        self.answer_start_row = answer_start_row
        self.output_dir = output_dir
        self.excel_database = "/home/robocupathome/workspace/eddy_code/src/data_processing/excel_database/"
        self.offset_file = "/home/robocupathome/workspace/eddy_code/src/data_processing/offset.txt"

        print("DataFrame shape:", len(self.df))  # Verify data loading

        # Extract questions from the specified row and column
        self.questions = self.df[question_row][question_start_col:]
        print("Loaded questions:", self.questions)  # Verify correct loading

        # Extract answers from the specified row onward
        self.answers = [row[question_start_col:] for row in self.df[answer_start_row:]]
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
        indexes = {
            'gender': 0,
            'age': 2,
            'race': 4,
            'degree': 6,
            'field': 8,
            'job': 10
        }

        for question, idx in indexes.items():
            answer = self.answers[0][idx]
            if not answer or 'other' in answer.lower():
                # Handle "other" case
                other_answer = self.answers[0][idx + 1]
                if other_answer:
                    answer = other_answer
            answer_lst[question] = answer
        return answer_lst

    def get_output_folder(self, answer_lst):
        def map_to_index(answer, options):
            cleaned_answer = answer.split(' (')[0]  # Ignore the index in parentheses
            return str(options.index(cleaned_answer) if cleaned_answer in options else len(options) - 1).zfill(2)

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
        gender_subname = map_to_index(answer_lst['gender'], gender_options)
        age_subname = map_to_index(answer_lst['age'], age_options)
        race_subname = map_to_index(answer_lst['race'], race_options)
        degree_subname = map_to_index(answer_lst['degree'], degree_options)
        field_subname = map_to_index(answer_lst['field'], field_options)
        job_subname = map_to_index(answer_lst['job'], job_options)

        # Concatenate subnames
        self.category_name = "{}_{}_{}_{}_{}_{}".format(gender_subname, age_subname, race_subname, degree_subname, field_subname, job_subname)

        # Ensure the folder name is unique by appending a unique identifier
        unique_id = 0
        while True:
            self.folder_name = "{}_{:02d}".format(self.category_name, unique_id)
            output_folder = os.path.join(self.output_dir, self.folder_name)
            if not os.path.exists(output_folder):
                os.makedirs(output_folder)
                break
            unique_id += 1

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
    parser.add_argument("--answer_start_row", type=int, help="Row index where answers start")
    parser.add_argument("--output_dir", default="/home/robocupathome/workspace/eddy_code/src/DATA", help="Output directory for JSON files (default: /home/robocupathome/workspace/eddy_code/src/DATA)")

    args = parser.parse_args()
    csv_file_path = "/home/robocupathome/workspace/eddy_code/src/data_processing/excel_database/" + args.csv_name + ".csv"

    question_row = args.question_row if args.question_row is not None else 0
    question_start_col = args.question_start_col if args.question_start_col is not None else 29
    answer_start_row = args.answer_start_row if args.answer_start_row is not None else 2

    if not os.path.exists(args.output_dir):
        os.makedirs(args.output_dir)

    qa_extractor = QAExtractor(csv_file_path, question_row, question_start_col, answer_start_row, args.output_dir)
    qa_extractor.save_qa_pairs_to_files()

if __name__ == "__main__":
    main()

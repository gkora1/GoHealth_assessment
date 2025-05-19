import pandas as pd

# Load the uploaded Excel file and list sheet names
excel_path = "/Users/glennkoranteng/Library/Mobile Documents/com~apple~CloudDocs/Desktop/Github and Projects/GoHealth_assessment/data/Data Eng Data Set.xlsx"
excel_file = pd.ExcelFile(excel_path)
excel_file.sheet_names
/Users/glennkoranteng/Library/Mobile Documents/com~apple~CloudDocs/Desktop/Github and Projects/GoHealth_assessment/data/Data Eng Data Set.xlsx
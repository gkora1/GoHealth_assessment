import os
from scripts.ingest_and_clean import run_cleaning_pipeline

def export_cleaned_data(input_excel_path, output_dir="data/cleaned"):
    cleaned = run_cleaning_pipeline(input_excel_path)
    os.makedirs(output_dir, exist_ok=True)
    
    for name, df in cleaned.items():
        out_path = os.path.join(output_dir, f"{name}.csv")
        df.to_csv(out_path, index=False)
        print(f"Exported {name} to {out_path}")

if __name__ == "__main__":
    input_excel_path = "data/Data Eng Data Set.xlsx"
    export_cleaned_data(input_excel_path)

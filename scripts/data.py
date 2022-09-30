import pandas as pd
import os
from openpyxl.workbook import workbook

def description():
    program_description = """
    This program stores dictionaries
    """
    return program_description

def read_file():
    df_read = pd.read_excel('firstdata.xlsx')
    return df_read

def copy_df():
    df_copy = read_file().copy(deep=True)
    return df_copy

def cup_data():
    cup = {

    }

def run():
    print(copy_df())


if __name__ == "__main__":
    run()
import pandas as pd
from connect import connectdb

# global variables
connection = connectdb()

def select_statement():
    select ="""
    SELECT * FROM group_positions
    """
    return select

def data_table():
    df = pd.read_sql_query(select_statement(),connection)
    return df

def close_connection():
    message1='Connection closed'
    message2='Still connected'
    close_ = connection.close()
    if close_ == None:
        return message1
    else:
        return message2

def run():
    print(data_table())
    print(close_connection())


if __name__ == "__main__":
    run()
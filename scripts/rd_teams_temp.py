import pandas as pd
from connect import connectdb

# global variables
connection = connectdb()

# sql statement
def sql():
    select = """
    SELECT group_id, team_id, tt.group_pos
    FROM teams_temp tt
    JOIN q_groups g ON g.q_group = tt.q_group
    JOIN teams t ON t.team_name = tt.team_name
    """
    return select

select  = sql()

# read data from sql script
def read_file():
    df_read = pd.read_sql_query(select,connection)
    return df_read

def file_loc():
    loc = ('/Users/ideasleon/platzi_edu/Python/Databases/mysql/qatar/firstdata.xlsx')
    return loc

def copy_df():
    df_copy = read_file().copy(deep=True)
    return df_copy

def run():
    print(copy_df())


if __name__ == "__main__":
    run()
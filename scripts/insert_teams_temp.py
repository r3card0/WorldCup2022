import pandas as pd
import datetime
from connect import connectdb, close_connection
from select_teams_temp import data_table
from read_data import copy_df

# global variables
connection = connectdb()
df = copy_df()
cur = connection.cursor()
insert_date = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')


# convertir un row en una tupla -> df
def row_to_tuple():
    df_row = tuple(df.iloc[31])
    return df_row
    
    

# list columns
def columns_list():
    see_columns = df.columns
    return see_columns

# extract column teams
def q_groups():
    groups_ = df
    return groups_


def insert_groups_prep():
    elements_list = []
    insert_ = "INSERT INTO teams_temp(team_name,q_group,group_pos) VALUES(%s,%s,%s)"
    for i in range(0,32):
        elements_list.append(tuple(df.iloc[i]))
    
    # return elements_list
    cur.executemany(insert_,elements_list)
    connection.commit()
    connection.close()


def run():
    insert_groups_prep()
    print(data_table())
    close_connection()
    


if __name__ == "__main__":
    run()
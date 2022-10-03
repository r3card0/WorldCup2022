import pandas as pd
import datetime
from connect import connectdb, close_connection
from select_groups import data_table
from read_data import copy_df

# global variables
connection = connectdb()
df = copy_df()
cur = connection.cursor()
insert_date = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

# read data from excel file
# def print_data():
#     return data_


# list columns
def columns_list():
    see_columns = df.columns
    return see_columns

# extract column teams
def q_groups():
    groups_ = list(df['group'].unique())
    return groups_


def insert_groups_prep():
    groups_list = []
    groups_=q_groups()
    insert_ = "INSERT INTO q_groups(q_group,insert_date) VALUES(%s,%s)"
    for group in groups_:
        groups_list.append(tuple((group,insert_date)))
    cur.executemany(insert_,groups_list)
    connection.commit()
    connection.close()


def run():
    # print(columns_list())
    # print(q_groups())
    insert_groups_prep()
    print(data_table())
    close_connection()
    


if __name__ == "__main__":
    run()
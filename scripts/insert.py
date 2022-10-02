import pandas as pd
import datetime
import os
from connect import connectdb, close_connection
from select_teams import data_table
from read_data import copy_df

# global variables
connection = connectdb()
df = copy_df()
cur = connection.cursor()
insert_date = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

# read data from excel file
# def print_data():
#     return data_

# extract column teams
def teams():
    teams_ = list(df['teams'])
    return teams_


def insert_teams_prep():
    teams_list = []
    teams_=teams()
    insert_ = "INSERT INTO teams(team_name,insert_date) VALUES(%s,%s)"
    for team in teams_:
        teams_list.append(tuple((team,insert_date)))
    cur.executemany(insert_,teams_list)
    connection.commit()
    connection.close()


def run():
    insert_teams_prep()
    print(data_table())
    close_connection()
    


if __name__ == "__main__":
    run()
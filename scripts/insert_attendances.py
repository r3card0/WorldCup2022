import mysql.connector as conn
from _read_files import get_attendances
from inserts import insert_attendances
from config import config

# connection
def connectdb():
    params = config()
    connection = conn.connect(**params)
    
    return connection

connection = connectdb()
cur = connection.cursor()
df = get_attendances()
insert_ = insert_attendances()

def by_row():
    df['data'] = df[['matchId','attendance']].values.tolist()
    rows = list(df['data'])
    return rows


def insert_data():
    data_list = []
    lists = by_row()

    for data in lists:
        data_list.append(tuple(data)) 

    # return data_list
    cur.executemany(insert_,data_list)
    connection.commit()
    connection.close()


def run():
    # print(insert_data())
    insert_data()


if __name__ == "__main__":
    run()
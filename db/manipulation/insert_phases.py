from _read_files import get_phases
import mysql.connector as conn
from config import config
import datetime
from insert_statements import insert_phases

# connection
def connectdb():
    params = config()
    connection = conn.connect(**params)
    
    return connection

connection = connectdb()
cur = connection.cursor()
df = get_phases()
insert_ = insert_phases()
insert_date = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')


def by_row():
    df['insert_date'] = insert_date
    df['data'] = df[['phase','insert_date']].values.tolist()
    rows = list(df['data'])
    return rows


def insert_data():
    data_list = []
    lists = by_row()

    for data in lists:
        data_list.append(tuple(data)) 

    #return data_list
    cur.executemany(insert_,data_list)
    connection.commit()
    connection.close()


def run():
    insert_data()


if __name__ == "__main__":
    run()
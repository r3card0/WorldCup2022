import mysql.connector as conn
from config import config

# connection
def connectdb():
    params = config()
    connection = conn.connect(**params)
    
    return connection

connection = connectdb()

def close_connection():
    close_ = connection.close()
    return close_

def run():
    print(connection)
    print(close_connection())


if __name__ == "__main__":
    run()
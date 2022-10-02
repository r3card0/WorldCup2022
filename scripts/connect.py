import mysql.connector as conn
from config import config

# connection
def connectdb():
    params = config()
    connection = conn.connect(**params)
    
    return connection

connection = connectdb()

def close_connection():
    message1='Connection closed'
    message2='Still connected'
    close_ = connection.close()
    if close_ == None:
        return message1
    else:
        return message2

def run():
    print(connection)
    print(close_connection())


if __name__ == "__main__":
    run()
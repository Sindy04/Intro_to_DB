import mysql.connector
from mysql.connector import Error

#Database connection parameters
DB_HOST = 'localhost'
DB_USER = 'your_username'
DB_PASSWORD ='your_password'

def create_database(db_host,db_user,db_password,db_name):
  try:
    #Establish database connection
    connection = mysql.connector.connect(
      host=db_host
      user=db_user
      password=db_password
    )
    

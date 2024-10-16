import mysql.connector
from mysql.connector import Error

#Database connection parameters
DB_HOST = 'localhost'
DB_USER = 'your_username'
DB_PASSWORD ='your_password'

CREATE DATABASE IF NOT EXISTS alx_book_store

def create_database(db_host,db_user,db_password,db_name):
  try:
    #Establish database connection
    connection = mysql.connector.connect(
      host=db_host
      user=db_user
      password=db_password
    )
      #Create cursor object
      cursor = connection.cursor()
    
    #Create database query
    query = f"CREATE DATABASE IF NOT EXISTS{db_name}"

#Execute query
cursor.execute(query)

#Print success message
print(f"Database '{db_name}' created successfully!")

except Error as e:
#Print error message
print(f"Error creating database: {e}")

finally:
#Close cursor and connection
if 'cursor' in locals():
  cursor.close()
if 'connection' in locals():
  connection.close()

#Call function to create database 
create_database(DB_HOST, DB_USER, DB_PASSWORD, 'alx_book_store')

    

--task_2.sql

--Use the database
USE alx_book_store;

--Create Books table
CREATE TABLE Authors(
  author_id INT AUTO_INCREMENT,
  author_name VARCHAR(215) NOT NULL,
  PRIMARY KEY (author_id)
  );

--Create Books table
CREATE TABLE Books(
  book_id INT AUTO_INCREMENT
  title VARCHAR(130) NOT NULL,
  author_id INT,
  price DOUBLE NOT NULL,
  publication_date DATE NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
  );
 
  --Create Customers table
CREATE TABLE Customers(
  customer_id INT AUTO_INCREMENT,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) UNIQUE,
  address TEXT,
  PRIMARY KEY (customer_id)
  );


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

--Create Orders table
CREATE TABLE Orders(
  order_id INT AUTO_INCREMENT,
  customer_id INT,
  order_date DATE NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
  );

--Create Order_Details table
CREATE TABLE Order_Details (
  orderdetailid INT AUTO INCREMENT,
  order_id INT,
  book_id INT,
  quantity DOUBLE NOT NULL,
  PRIMARY KEY (orderdetailid),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
  );

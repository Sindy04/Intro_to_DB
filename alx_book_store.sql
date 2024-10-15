-- Database creation
CREATE DATABASE alx_book_store

--Use the database
USE alx_book_store;

--Create Author table
CREATE TABLE Authors (
  author_id INT AUTO_INCREMENT,
  author_name VARCHAR(21) NOT NULL,
  PRIMARY KEY (author_id)
);

--task_4.sql

--Use the information_schema database
USE information_schema

--Query the COLUMNS table for books table description
SELECT
COLUMN_NAME,
DATA_TYPE,
CHARACTER_MAXIMUM_LENGTH,
NUMERIC_PRECISION,
NUMERIC_SCALE,
IS_NULLABLE
FROM
COLUMNS
WHERE
TABLE_SCHEMA = DATABASE()
AND TABLE_NAME = 'books'
INFORMATION_SCHEMA.COLUMNS", "COLUMN_TYPE", "TABLE_SCHEMA = 'alx_book_store'", "TABLE_NAME = 'Books'"

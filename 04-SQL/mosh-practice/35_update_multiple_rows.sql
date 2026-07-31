-- Topic: UPDATE Statement (Updating Multiple Rows)
-- Database: sql_store
-- Updates points by adding 50 for all customers born before January 1, 1990

USE sql_store;

UPDATE customers
SET 
    points = points + 50
WHERE birth_date < '1990-01-01';
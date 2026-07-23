-- Topic: BETWEEN operator
-- Database: sql_store
-- BETWEEN filters rows within a range (inclusive on both ends)

USE sql_store;

SELECT * FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
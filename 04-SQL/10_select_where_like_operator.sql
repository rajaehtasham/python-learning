-- Topic: LIKE operator for pattern matching
-- Database: sql_store
-- % matches any number of characters
-- '%trail%' = contains 'trail' anywhere in address
-- '%9' = phone number ending with 9

USE sql_store;

SELECT * FROM customers
WHERE address LIKE '%trail%'
OR address LIKE '%avenue%'
OR phone LIKE '%9';
-- Topic: LIMIT clause for Top N records
-- Database: sql_store
-- Retrieves top 3 customers with highest points by sorting in descending order and limiting results

USE sql_store;

SELECT * FROM customers
ORDER BY points DESC 
LIMIT 3
-- Topic: UNION Operator (Categorizing Customer Tiers)
-- Database: sql_store
-- Combines results from multiple queries using UNION to categorize customers into Bronze, Silver, and Gold tiers based on points

USE sql_store;

SELECT 
    customer_id,
    first_name,
    points,
    'Bronze' AS type 
FROM customers
WHERE points < 2000

UNION

SELECT 
    customer_id,
    first_name,
    points,
    'Silver' AS type 
FROM customers
WHERE points BETWEEN 2000 AND 3000

UNION

SELECT 
    customer_id,
    first_name,
    points,
    'Gold' AS type 
FROM customers
WHERE points > 3000
ORDER BY first_name;
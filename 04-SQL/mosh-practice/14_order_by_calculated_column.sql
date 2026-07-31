-- Topic: ORDER BY clause with Calculated Column Alias
-- Database: sql_store
-- Calculates total_price for order_id 2 and sorts the results in descending order

USE sql_store;

SELECT *,
       quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;
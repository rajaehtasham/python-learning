-- Topic: USING Clause for Table Joins
-- Database: sql_store
-- Simplifies JOIN conditions using the USING keyword when column names match across tables

USE sql_store;

SELECT 
    order_id,
    c.customer_id,
    s.name AS shipper
FROM orders o
JOIN customers c
  USING (customer_id)
LEFT JOIN shippers s
  USING (shipper_id);
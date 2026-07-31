-- Topic: Table Aliases with INNER JOIN
-- Database: sql_store
-- Joins orders and customers tables using short aliases (o, c) for cleaner query structure

USE sql_store;

SELECT order_id, 
       o.customer_id, 
       first_name, 
       last_name
FROM orders o
JOIN customers c
  ON o.customer_id = c.customer_id;
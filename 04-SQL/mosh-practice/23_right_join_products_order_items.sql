-- Topic: RIGHT JOIN (Outer Join)
-- Database: sql_store
-- Performs a RIGHT JOIN to retrieve all products, including those that have never been ordered, sorted by product_id

USE sql_store;

SELECT 
    p.product_id,
    p.name,
    oi.quantity
FROM order_items oi
RIGHT JOIN products p
  ON oi.product_id = p.product_id
ORDER BY product_id;
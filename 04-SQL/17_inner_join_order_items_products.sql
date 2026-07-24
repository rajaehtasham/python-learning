-- Topic: Joining Order Items with Products Table
-- Database: sql_store
-- Joins order_items with products using product_id to show item name, ordered quantity, and unit price

USE sql_store;

SELECT order_id, 
       p.product_id, 
       name, 
       quantity, 
       oi.unit_price
FROM order_items oi
JOIN products p
  ON oi.product_id = p.product_id;
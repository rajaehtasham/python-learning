-- Topic: Cross-Database JOINs
-- Database: sql_inventory
-- Joins order_items from sql_store database with products from current sql_inventory database using product_id

USE sql_inventory;

SELECT *
FROM sql_store.order_items oi
JOIN products p
  ON oi.product_id = p.product_id;
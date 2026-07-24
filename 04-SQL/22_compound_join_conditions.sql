-- Topic: Compound Join Conditions (Multiple ON Conditions)
-- Database: sql_store
-- Joins order_items with order_item_notes matching composite primary keys on both order_id and product_id

USE sql_store;

SELECT *
FROM order_items oi
JOIN order_item_notes oin
  ON oi.order_id = oin.order_id
 AND oi.product_id = oin.product_id;
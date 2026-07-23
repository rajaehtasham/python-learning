-- Topic: Calculated columns with WHERE filter
-- Database: sql_store
-- Gets order items from order 6 where total price exceeds 30

USE sql_store;

SELECT *,
    (unit_price * quantity) AS total_price
FROM order_items
WHERE order_id = 6
AND unit_price * quantity > 30;
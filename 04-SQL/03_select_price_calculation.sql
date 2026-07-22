-- Topic: Calculated columns on products table
-- Database: sql_store

-- Get product names with original and increased price
-- unit_price * 1.1 adds 10% to the original price
-- AS new_price renames the calculated column

USE sql_store;

SELECT
    name,
    unit_price,
    unit_price * 1.1 AS new_price
FROM products;
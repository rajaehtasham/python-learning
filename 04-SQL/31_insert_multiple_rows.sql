-- Topic: Inserting Multiple Rows in a Single Query
-- Database: sql_store
-- Inserts multiple new product records into the products table within a single INSERT INTO statement

USE sql_store;

INSERT INTO products (
    name,
    quantity_in_stock,
    unit_price
)
VALUES 
    ('product 1', 10, 1.70),
    ('product 2', 20, 8.00),
    ('product 3', 30, 1.50);
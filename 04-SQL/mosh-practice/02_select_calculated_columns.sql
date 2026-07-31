-- Topic: Calculated columns and aliases
-- Database: sql_store

-- Select customer details with calculated discount factor
-- (points * 10) + 100 creates a temporary calculated column
-- AS renames it to a readable name

USE sql_store;

SELECT
    first_name,
    last_name,
    points,
    (points * 10) + 100 AS 'discount factor'
FROM customers;
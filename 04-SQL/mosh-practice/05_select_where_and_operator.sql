-- Topic: AND operator with date range filtering
-- Database: sql_store

-- Get all orders placed in the year 2018
-- Using AND operator to combine two conditions

USE sql_store;

SELECT * FROM orders
WHERE order_date >= '2018-01-01'   -- from start of 2018
AND order_date <= '2018-12-31';    -- to end of 2018
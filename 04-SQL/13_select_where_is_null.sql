-- Topic: IS NULL operator
-- Database: sql_store
-- IS NULL finds rows where a column has no value

USE sql_store;

SELECT * FROM orders
WHERE shipped_date IS NULL;
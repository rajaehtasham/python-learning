-- Topic: IN operator
-- Database: sql_store
-- IN replaces multiple OR conditions with a cleaner syntax

USE sql_store;

SELECT * FROM products
WHERE quantity_in_stock IN (49, 38, 72);
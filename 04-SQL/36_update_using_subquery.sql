-- Topic: UPDATE Statement with Subqueries
-- Database: sql_store
-- Updates order comments for customers who have earned Gold status (more than 3000 points) using a subquery

USE sql_store;

UPDATE orders
SET 
    comments = 'Gold customer' 
WHERE customer_id IN (
    SELECT 
        customer_id
    FROM customers
    WHERE points > 3000
);
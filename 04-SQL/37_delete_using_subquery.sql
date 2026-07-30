-- Topic: DELETE Statement with Subqueries
-- Database: sql_invoicing
-- Deletes records from invoices based on client ID fetched from clients table using a subquery

USE sql_invoicing;

DELETE FROM invoices
WHERE client_id IN (
    SELECT client_id
    FROM clients
    WHERE name = 'Myworks'
);
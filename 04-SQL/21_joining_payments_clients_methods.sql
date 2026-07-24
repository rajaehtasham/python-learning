-- Topic: Multiple JOINs with Payments, Clients, and Payment Methods
-- Database: sql_invoicing
-- Joins payments table with clients and payment_methods to fetch payment details alongside client IDs and payment method names

USE sql_invoicing;

SELECT 
    c.client_id,
    payment_id,
    invoice_id,
    date,
    amount,
    pm.name AS payment_method
FROM payments p
JOIN clients c
  ON c.client_id = p.client_id
JOIN payment_methods pm
  ON p.payment_method = pm.payment_method_id;
-- Topic: USING Clause with Multiple Joins
-- Database: sql_invoicing
-- Combines USING clause for matching columns and ON clause for differing column names across payments, clients, and payment_methods

USE sql_invoicing;

SELECT 
    p.date,
    c.name AS client,
    p.amount,
    pm.name AS payment_method
FROM payments p
JOIN clients c
  USING (client_id)
JOIN payment_methods pm 
  ON p.payment_method = pm.payment_method_id;
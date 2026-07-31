-- Topic: Creating a Copy of a Table (CREATE TABLE ... AS SELECT)
-- Database: sql_invoicing
-- Creates an archived invoices table populated with payment-completed invoices joined with client details

USE sql_invoicing;

CREATE TABLE invoices_archived AS
SELECT 
    invoice_id,
    number,
    c.name AS client_name,
    invoice_total,
    payment_total,
    invoice_date,
    due_date,
    payment_date
FROM invoices i
JOIN clients c
  ON i.client_id = c.client_id
WHERE i.payment_date IS NOT NULL;
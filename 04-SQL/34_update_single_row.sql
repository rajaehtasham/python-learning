-- Topic: UPDATE Statement (Updating Single Row)
-- Database: sql_invoicing
-- Updates payment_total and payment_date for a specific invoice using calculated and existing column values

USE sql_invoicing;

UPDATE invoices 
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE invoice_id = 3;
-- Topic: INSERT Into a Single Table (Inserting a Single Row)
-- Database: sql_store
-- Inserts a new customer record with specific columns defined while leaving optional or auto-increment columns to default

USE sql_store;

INSERT INTO customers (
    first_name,
    last_name,
    birth_date,
    address,
    city,
    state
)
VALUES (
    'Raja',
    'Ehtasham',
    '2005-12-10',
    'Street9',
    'RWP',
    'RP'
);
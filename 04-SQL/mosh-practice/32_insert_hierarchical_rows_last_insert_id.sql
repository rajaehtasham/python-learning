-- Topic: Inserting Hierarchical Data (Parent-Child Rows using LAST_INSERT_ID)
-- Database: sql_store
-- Inserts a parent row into the orders table and uses LAST_INSERT_ID() to insert child rows into order_items

USE sql_store;

INSERT INTO orders (
    customer_id,
    order_date,
    status
)
VALUES (
    1,
    '2026-01-03',
    1
);

INSERT INTO order_items
VALUES 
    (LAST_INSERT_ID(), 1, 3, 4.56),
    (LAST_INSERT_ID(), 2, 4, 6.36);
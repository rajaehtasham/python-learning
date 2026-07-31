-- Topic: CROSS JOIN (Implicit vs Explicit)
-- Database: sql_store
-- Generates a Cartesian product combining every shipper with every product using implicit syntax and explicit CROSS JOIN syntax

USE sql_store;

SELECT 
    s.name AS shipper,
    p.name AS product
FROM shippers s, products p
-- FROM shippers s
-- CROSS JOIN products p
ORDER BY s.name;
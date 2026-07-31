-- Topic: NOT operator with AND/OR conditions
-- Database: sql_store

-- Get customers who do NOT meet any of these conditions:
-- born after 1990 OR have more than 1000 points AND live in VA
-- NOT reverses/negates the entire condition inside brackets

-- Operator precedence in SQL:
-- AND is evaluated BEFORE OR (like * before + in math)
-- So this query reads as:
-- NOT (birth_date > '1990-01-01' OR (points > 1000 AND state = 'VA'))

USE sql_store;

SELECT * FROM customers
WHERE NOT (
    birth_date > '1990-01-01'
    OR points > 1000
    AND state = 'VA'
);
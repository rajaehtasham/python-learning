-- Topic: REGEXP operator for advanced pattern matching
-- Database: sql_store
-- More powerful than LIKE operator

-- ^ = must start with
-- $ = must end with
-- | = OR (match this or that)
-- [] = match any character inside brackets
-- [a-d] = match any character in range a to d

USE sql_store;

SELECT * FROM customers
-- WHERE first_name REGEXP '^b'         -- starts with 'b'
-- WHERE last_name REGEXP 'y$'          -- ends with 'y'
-- WHERE phone REGEXP '983|21|932'      -- contains any of these
-- WHERE last_name REGEXP '[icemas]e'   -- any of these chars before e
-- WHERE last_name REGEXP '[a-d]e'      -- range a-d followed by e
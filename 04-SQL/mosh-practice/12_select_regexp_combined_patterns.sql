-- Topic: REGEXP combined patterns
-- Database: sql_store

-- '^elka|^ambur' = starts with elka OR starts with ambur
-- 'ey$|on$'      = ends with ey OR ends with on
-- '^my|se'       = starts with my OR contains se anywhere
-- 'b[ru]'        = b followed by r or u

USE sql_store;

SELECT * FROM customers
-- WHERE first_name REGEXP '^elka|^ambur'  -- starts with elka or ambur
-- WHERE last_name REGEXP 'ey$|on$'        -- ends with ey or on
-- WHERE last_name REGEXP '^my|se'         -- starts with my or contains se
-- WHERE last_name REGEXP 'b[ru]'          -- br or bu
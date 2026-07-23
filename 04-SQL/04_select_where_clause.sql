-- Topic: WHERE clause and comparison operators
-- Database: sql_store

-- Different WHERE clause examples using comparison operators
-- Uncomment one WHERE at a time to test each filter

USE sql_store;

SELECT * FROM customers
-- WHERE state = 'VA'              -- filter by state
-- WHERE birth_date > '1990-01-01' -- filter by date
-- WHERE last_name != 'MacCaffrey' -- not equal (!=)
-- WHERE first_name <> 'Ines'      -- not equal (<>)
-- WHERE points < 3000             -- less than
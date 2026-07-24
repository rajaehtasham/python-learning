-- Topic: Self JOIN on Employees Table
-- Database: sql_hr
-- Joins employees table with itself to map each employee to their respective manager using reports_to

USE sql_hr;

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    m.first_name AS manager,
    m.employee_id
FROM employees e
JOIN employees m
  ON e.reports_to = m.employee_id;
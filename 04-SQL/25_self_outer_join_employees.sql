-- Topic: Self Outer Join (Self LEFT JOIN)
-- Database: sql_hr
-- Performs a LEFT JOIN on the employees table with itself to list all employees, including the manager who reports to no one

USE sql_hr;

SELECT 
    e.employee_id,
    e.first_name AS Employee_name,
    m.first_name AS Manager
FROM employees e
LEFT JOIN employees m
  ON e.reports_to = m.employee_id;
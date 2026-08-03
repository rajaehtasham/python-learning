-- SQLZoo: Module 1 (SELECT name) Solutions

-- Question 1: Starts with letter
SELECT name 
FROM world 
WHERE name LIKE 'Y%';


-- Question 2: Ends with letter
SELECT name 
FROM world 
WHERE name LIKE '%y';


-- Question 3: Contains specific character
SELECT name 
FROM world 
WHERE name LIKE '%x%';


-- Question 4: Ends with substring
SELECT name 
FROM world 
WHERE name LIKE '%land';


-- Question 5: Starts and ends
SELECT name 
FROM world 
WHERE name LIKE 'C%ia';


-- Question 6: Repeated characters pattern
SELECT name 
FROM world 
WHERE name LIKE '%oo%';


-- Question 7: Multiple character counts
SELECT name 
FROM world 
WHERE name LIKE '%a%a%a%';


-- Question 8: Matching second character
SELECT name 
FROM world 
WHERE name LIKE '_t%'
ORDER BY name;


-- Question 9: Separated character pattern
SELECT name 
FROM world 
WHERE name LIKE '%o__o%';


-- Question 10: Exact string length
SELECT name 
FROM world 
WHERE LENGTH(name) = 4;
-- Alternative using wildcards: WHERE name LIKE '____';


-- Question 11: Matching name capital
SELECT name 
FROM world 
WHERE name = capital;


-- Question 12: String concatenation match
SELECT name 
FROM world 
WHERE capital = CONCAT(name, ' City');


-- Question 13: Substring pattern inclusion
SELECT capital, name 
FROM world 
WHERE capital LIKE CONCAT('%', name, '%');


-- Question 14: Proper extension matching
SELECT capital, name 
FROM world 
WHERE capital LIKE CONCAT(name, '%') 
  AND capital != name;


-- Question 15: String replacement extraction
SELECT name, REPLACE(capital, name, '') AS extension 
FROM world 
WHERE capital LIKE CONCAT(name, '%') 
  AND capital != name;
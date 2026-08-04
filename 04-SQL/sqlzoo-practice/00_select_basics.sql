-- Topic: SELECT Basics
-- Platform: SQLZoo (Section 0)

-- Exercise 1
-- Retrieves the population of Germany from the world table

SELECT population 
FROM world 
WHERE name = 'Germany';

-- Retrieves the name and population for 
-- Sweden, Norway, and Denmark using the IN operator

SELECT 
    name,
    population
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- Exercise 3
-- Retrieves country name and area for countries with an area between 200,000 and 250,000 sq km

SELECT 
    name, 
    area 
FROM world
WHERE area BETWEEN 200000 AND 250000;


-- Topic: SELECT Basics
-- Platform: SQLZoo (Section 0)

-- Exercise 1
-- Retrieves the population of Germany from the world table

SELECT population 
FROM world 
WHERE name = 'Germany';

-- Exercise 2
-- Retrieves the name and population for 
-- Sweden, Norway, and Denmark using the IN operator

SELECT 
    name,
    population
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');


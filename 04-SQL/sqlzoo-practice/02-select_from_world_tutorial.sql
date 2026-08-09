-- SQLZoo: SELECT from WORLD Tutorial
-- File: 02-SELECT from WORLD Tutorial.sql

-- 1. Introduction: Select all country names, continents, and populations
SELECT name, continent, population 
FROM world;

-- 2. Large Countries: Filter countries with population at least 200 million
SELECT name 
FROM world 
WHERE population >= 200000000;

-- 3. Per capita GDP: Calculate GDP per person for large countries
SELECT name, gdp / population AS per_capita_gdp 
FROM world 
WHERE population >= 200000000;

-- 4. South America In millions: Show population in millions for South America
SELECT name, population / 1000000 AS population_in_millions 
FROM world 
WHERE continent = 'South America';

-- 5. France, Germany, Italy: Filter specific European countries by name
SELECT name, population 
FROM world 
WHERE name IN ('France', 'Germany', 'Italy');

-- 6. United: Match countries with 'United' in name
SELECT name 
FROM world 
WHERE name LIKE '%United%';

-- 7. Two ways to be big: Filter by large area or population
SELECT name, population, area 
FROM world 
WHERE area > 3000000 
   OR population > 250000000;

-- 8. One or the other (but not both): Exclusive OR for area and population
SELECT name, population, area 
FROM world 
WHERE (area > 3000000 XOR population > 250000000);

-- 9. Rounding: Round population and GDP values
SELECT name, 
       ROUND(population / 1000000, 2) AS population_in_millions, 
       ROUND(gdp / 1000000000, 2) AS gdp_in_billions 
FROM world 
WHERE continent = 'South America';

-- 10. Trillion dollar economies: Round per-capita GDP to thousands
SELECT name, 
       ROUND(gdp / population, -3) AS per_capita_gdp 
FROM world 
WHERE gdp >= 1000000000000;

-- 11. Name and capital have the same length: Match string length of two columns
SELECT name, capital 
FROM world 
WHERE LENGTH(name) = LENGTH(capital);

-- 12. Matching name and capital: Compare starting letters without exact matches
SELECT name, capital 
FROM world 
WHERE LEFT(name, 1) = LEFT(capital, 1) 
  AND name <> capital;

-- 13. All the vowels: Find single word with all vowels
SELECT name 
FROM world 
WHERE name LIKE '%a%' 
  AND name LIKE '%e%' 
  AND name LIKE '%i%' 
  AND name LIKE '%o%' 
  AND name LIKE '%u%' 
  AND name NOT LIKE '% %';
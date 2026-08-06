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
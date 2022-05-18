-- world
-- Question 1
-- Using COUNT, get the number of cities in the USA.
USE world;
SELECT COUNT(CountryCode)
FROM (City)
WHERE CountryCode="USA";


-- Question 2
-- Find out the population and life expectancy for people in Argentina.

SELECT population, lifeexpectancy From country group by 'argentina';

-- Question 3
-- Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?

SELECT * FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC LIMIT 5;

-- Question 4
-- Using JOIN ... ON, find the capital city of Spain.
SELECT city.name FROM country LEFT JOIN city ON country.capital = city.id WHERE country.code = 'ESP';

-- Question 5
-- Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.
SELECT DISTINCT cl.language FROM country c LEFT JOIN countrylanguage cl ON c.code = cl.countrycode WHERE c.region = 'Southeast Asia';

-- Question 6
-- Using a single query, list 25 cities around the world that start with the letter F.
SELECT * FROM country WHERE name LIKE 'f%' LIMIT 25;

-- Question 7
-- Using COUNT and JOIN ... ON, get the number of cities in China.
SELECT city.name FROM country LEFT JOIN city ON country.capital = city.id WHERE country.code = 'CHN';
-- Question 8
-- Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
SELECT Name, Population
FROM country
WHERE population IS NOT NULL
ORDER BY Population ASC LIMIT 7 ;
-- Question 9
-- Using aggregate functions, return the number of countries the database contains.
SELECT COUNT(name) FROM country;

-- Question 10
-- What are the top ten largest countries by area?
SELECT Name, SurfaceArea FROM country
ORDER BY SurfaceArea DESC LIMIT 10;

-- Question 11
-- List the five largest cities by population in Japan.

SELECT c.name, c.Population `5 largest cities By Population in Japan`
FROM City C
LEFT JOIN Country ON Country.Code = C.CountryCode
WHERE Country.Code = 'JPN'
ORDER BY Country.Population DESC
LIMIT 5;

-- Question 12
-- List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!

-- COME BACK TO THIS**

-- Question 13
-- List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.

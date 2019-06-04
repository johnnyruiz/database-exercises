USE world;


SELECT name AS 'Countries whose name differs from local name', LocalName FROM country
WHERE Name != LocalName;

SELECT name AS 'Countries with a Life expectancy less than 70', LifeExpectancy FROM country
WHERE LifeExpectancy < 70;

SELECT name AS 'Region of the world San Antonio is in', CountryCode FROM City
WHERE Name = 'San Antonio';
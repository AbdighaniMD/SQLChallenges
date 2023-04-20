-- Asian Population
-- https://www.hackerrank.com/challenges/asian-population/problem


SELECT SUM(CITY.POPULATION) FROM CITY
INNER JOIN COUNTRY
ON COUNTRY.Code = CITY.CountryCode
WHERE COUNTRY.CONTINENT= 'ASIA';
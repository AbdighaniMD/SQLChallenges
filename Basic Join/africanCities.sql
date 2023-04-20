-- African Cities
-- https://www.hackerrank.com/challenges/african-cities/problem


SELECT CITY.NAME FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT='AFRICA';
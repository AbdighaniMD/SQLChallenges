-- Weather Observation Station 5
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

(
SELECT City, LENGTH(City) FROM Station
ORDER BY LENGTH(City) ASC, City
LIMIT 1
) UNION (
SELECT City, LENGTH(City) FROM Station
ORDER BY LENGTH(City) DESC, City
LIMIT 1
)


-------

(
SELECT  CITY, LENGTH(CITY) FROM STATION
WHERE LENGTH(CITY) = (
    SELECT MIN(LENGTH(CITY)) FROM STATION
)
ORDER BY LENGTH(City) ASC, City LIMIT 1
) union (
SELECT  CITY, LENGTH(CITY) FROM STATION
WHERE LENGTH(CITY) = (
    SELECT MAX(LENGTH(CITY)) FROM STATION
)
ORDER BY LENGTH(City) DESC, City LIMIT 1
)

------------

SELECT City, ( SELECT min(LENGTH(CITY)) FROM STATION)
FROM Station
ORDER BY LENGTH(City) ASC, City LIMIT 1

SELECT City, ( SELECT MAX(LENGTH(CITY)) FROM STATION)
FROM Station
ORDER BY LENGTH(City) DESC, City LIMIT 1
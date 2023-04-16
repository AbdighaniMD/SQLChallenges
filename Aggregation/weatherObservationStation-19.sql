-- Weather Observation Station 19
-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem
-- Euclidean Distance: 
-- SQRT(): Returns the square root of a number
-- POWER(): Returns the value of a number raised to the power of another number


SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)), 4)
FROM Station;
-- Weather Observation Station 18
-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem
-- Manhattan distance: p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
-- ABS(): Returns the absolute value of a number
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4) FROM Station;
-- The Blunder, CEIL(), REPLACE()
-- https://www.hackerrank.com/challenges/the-blunder/problem
-- CEIL(number)
-- REPLACE(string, old_string, new_string)
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary,'0',''))) FROM  EMPLOYEES
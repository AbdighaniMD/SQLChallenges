-- The PADS
-- https://www.hackerrank.com/challenges/the-pads/problem
-- CONCAT()

SELECT CONCAT(NAME, '(', LEFT(Occupation, 1), ')') from Occupations
ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM Occupations
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation;

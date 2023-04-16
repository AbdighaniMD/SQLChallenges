-- Top Earners
-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

SELECT (SALARY*MONTHS) AS total_earning, COUNT(*) AS employee_count FROM EMPLOYEE
GROUP BY total_earning
HAVING total_earning = MAX(salary*months)
ORDER BY total_earning DESC
LIMIT 1;

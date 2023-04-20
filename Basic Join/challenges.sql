-- Challenges
-- https://www.hackerrank.com/challenges/challenges/problem

WITH t AS (
    SELECT hacker_id, name, COUNT(*) AS cnt
    FROM Hackers
    JOIN Challenges
    USING(hacker_id)
    GROUP BY hacker_id, name
    ORDER BY COUNT(*) DESC, hacker_id
)
SELECT * FROM t
WHERE cnt = (SELECT MAX(cnt) FROM t)
    OR cnt IN (
        SELECT cnt 
        FROM t
        GROUP BY cnt
        HAVING COUNT(*) = 1
)
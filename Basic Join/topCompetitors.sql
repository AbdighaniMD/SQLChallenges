-- Top Competitors
-- https://www.hackerrank.com/challenges/full-score/problem

SELECT Hackers.hacker_id, Hackers.name FROM Hackers
INNER JOIN Submissions  ON Hackers.hacker_id = Submissions.hacker_id
INNER JOIN Challenges ON Submissions.challenge_id = Challenges.challenge_id
INNER JOIN Difficulty ON Challenges.difficulty_level = Difficulty.difficulty_level AND Submissions.score = Difficulty.score
GROUP BY Hackers.hacker_id, Hackers.name
HAVING COUNT(challenges.challenge_id) > 1
ORDER BY COUNT(challenges.challenge_id) DESC, hackers.hacker_id;
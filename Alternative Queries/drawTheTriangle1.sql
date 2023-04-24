-- Draw The Triangle 1
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
--REPEAT()

SELECT REPEAT('* ', @num := @num-1)
FROM information_schema.tables, (SELECT @num:=21) pattern
LIMIT 20 
-- Draw The Triangle 2
-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem

SELECT REPEAT('* ', @num := @num+1)
FROM information_schema.tables, (SELECT @num:=0) pattern
LIMIT 20 
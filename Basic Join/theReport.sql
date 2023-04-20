-- The Report
-- https://www.hackerrank.com/challenges/the-report/problem

SELECT IF(Grades.grade >= 8, Students.NAME, NULL), Grades.grade, Students.marks FROM Students
LEFT JOIN Grades
ON Students.marks BETWEEN Grades.MIN_MARK AND MAX_MARK
ORDER BY Grades.grade DESC, Students.NAME, Students.marks;
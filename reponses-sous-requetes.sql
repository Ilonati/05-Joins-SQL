-- Q1 – Etudiants les plus jeunes

SELECT first_name, last_name,
(SELECT MAX(birth_year) FROM Student) AS plus_jeunes FROM Student;

-- Q2 – Moyenne générale des examens

SELECT stud, note
FROM(
    SELECT student_id AS stud, AVG(score) AS note
    FROM Exam 
    GROUP BY student_id
) AS moyenne_note;


SELECT s.first_name, s.last_name,
(SELECT AVG(score)
FROM Exam e
WHERE e.student_id = s.student_id) AS avg_score
FROM Student AS s;
-- Q3 – Meilleure note en Développement Web


SELECT s.first_name, s.last_name, e.score
FROM Student s
INNER JOIN Exam e 
ON s.student_id = e.student_id
INNER JOIN Course c 
ON s.course_id = c.course_id
WHERE c.course_name = "Développement Web" 
AND e.score = (SELECT MAX(e.score)
FROM Exam e
WHERE c.course_name = "Développement Web");





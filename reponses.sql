-- Partie 1 – INNER JOIN

1

SELECT Student.first_name, Student.last_name, Course.course_name
FROM Student
INNER JOIN Course 
ON Student.course_id = Course.course_id;


2

SELECT Student.first_name, Student.last_name, Course.course_name
FROM Student
INNER JOIN Course 
ON Student.course_id = Course.course_id
WHERE Course.course_name = "Data Analyst";

3 

SELECT Student.first_name, Student.last_name, Course.course_name, Exam.score, Exam.exam_date
FROM Student
INNER JOIN Course
ON Student.course_id = Course.course_id
INNER JOIN Exam 
ON Student.course_id = Exam.exam_id;

-- Partie 2 – LEFT JOIN


4


SELECT Student.first_name, Student.last_name, Course.course_name
FROM Student
LEFT JOIN Course 
ON Student.course_id = Course.course_id;

5  

SELECT Student.first_name, Student.last_name, Course.course_name
FROM Student
LEFT JOIN Course 
ON Student.course_id = Course.course_id
WHERE Course.course_name IS NULL;

6 

SELECT Student.first_name, Student.last_name, Exam.exam_id, Exam.exam_type
FROM Student
LEFT JOIN Exam 
ON Student.course_id = Exam.exam_id;

-- Partie 3 – RIGHT JOIN

7 
SELECT Course.course_name
FROM Course
RIGHT JOIN Student
ON Course.course_id = Student.course_id;

8 

SELECT Exam.exam_type, Exam.exam_date, Course.course_id, Course.course_name 
FROM Course
RIGHT JOIN Exam
ON  Exam.exam_id = Course.course_id;

-- Partie 4 – FULL OUTER JOIN

9 

SELECT Student.first_name, Student.last_name, Course.course_name
FROM Student
LEFT JOIN  Course
ON Student.course_id = Course.course_id

UNION 

SELECT Student.first_name, Student.last_name, Course.course_name
FROM Student
RIGHT JOIN  Course
ON Student.course_id = Course.course_id;

10 

SELECT Student.first_name, Student.last_name, Exam.exam_type
FROM Student
LEFT JOIN  Exam
ON Student.course_id = Exam.exam_id

UNION 

SELECT Student.first_name, Student.last_name, Exam.exam_type
FROM Student
RIGHT JOIN  Exam
ON Student.course_id = Exam.exam_id
WHERE Student.course_id IS NULL;

-- Partie 5 – SELF JOIN

11
SELECT  student1.first_name AS student1, student2.first_name AS student2
FROM Student AS student1
JOIN Student AS student2
ON student1.birth_year = student2.birth_year AND student1.student_id > student2.student_id;

12

SELECT  student1.first_name AS student1, student2.first_name AS student2
FROM Student AS student1
JOIN Student AS student2
ON student1.birth_year > student2.birth_year;

-- Partie 6 – CROSS JOIN

13 
SELECT  Student.first_name, Student.last_name, Exam.exam_type
FROM Student
CROSS JOIN Exam;

14

COUNT Student.first_name, Student.last_name, Exam.exam_type
FROM Student
CROSS JOIN Exam;

-- Partie 7 – Aggrégations

15

SELECT student1.first_name, student1.last_name AVG(Exam.score) 
FROM student1 
JOIN Exam ON student1.student_id = Exam.student_id
GROUP BY student1.student_id; 

16

SELECT Course.course_name 
MAX(Exam.score)
FROM Course
JOIN Exam ON Course.course_id = Exam.course_id
GROUP BY Course.course_id;

17


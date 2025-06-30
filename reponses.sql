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


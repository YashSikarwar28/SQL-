-- Select, update, group by, order by and other conditional logics.
CREATE DATABASE college;
USE college;

CREATE TABLE student1(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

INSERT INTO student1 VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT city FROM student1;
SELECT DISTINCT city FROM student1;

SELECT * FROM student1 WHERE marks>80;
SELECT name FROM student1 WHERE marks>80;

SELECT * 
FROM student1 
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM student1
WHERE city IN("Delhi","Mumbai");

SELECT *
FROM student1
ORDER BY city ASC;

SELECT * 
FROM student1
ORDER BY marks DESC;

SELECT MAX(marks)
FROM student1;
SELECT MIN(Marks)
FROM student1;
SELECT AVG(Marks)
FROM student1;

SELECT city, COUNT(rollno) 
FROM student1 
GROUP BY city;

SELECT AVG(marks), city 
FROM student1 
GROUP BY city
ORDER BY city;

SELECT grade, COUNT(rollno)
FROM student1
GROUP BY grade;

SELECT city, COUNT(rollno)
FROM student1
GROUP BY city
HAVING MAX(marks) > 90;

SET SQL_SAFE_UPDATES = 0;

UPDATE student1
SET city="Mumbai"
WHERE city="Mumabai";

UPDATE student1
SET marks=marks+1;

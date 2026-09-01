-- Alter commands
CREATE DATABASE fourth;
USE fourth;
SET SQL_SAFE_UPDATES=0;

CREATE TABLE student2(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

INSERT INTO student2 VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM student2;

ALTER TABLE student2
ADD COLUMN age INT NOT NULL;

ALTER TABLE student2
CHANGE age student_age INT;

ALTER TABLE student2
DROP COLUMN age;

ALTER TABLE student2
CHANGE name Full_Name VARCHAR(50);

DELETE FROM student2
WHERE marks<80;

SELECT AVG(marks)
FROM student2;

-- sub query ( nested query)
SELECT name, marks 
FROM student2
WHERE marks > (SELECT AVG(marks) FROM student2);

SELECT name 
FROM student2
WHERE rollno IN (
	SELECT rollno	
	FROM student2 
	WHERE rollno % 2 = 0);
    
SELECT MAX(marks)
FROM (
	SELECT marks 
	FROM student2 
	WHERE city="Delhi") as temp;

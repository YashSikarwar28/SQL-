CREATE DATABASE fifth;
USE fifth;

CREATE TABLE student5(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student5
VALUES
(101,"Adam"),
(102,"Bob"),
(103,"Casey");

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course(id, course)
VALUES
(102,"English"),
(105,"Math"),
(103,"Science"),
(107,"Computer Science");

SELECT *
FROM student5
INNER JOIN course
ON student5.id=course.id;

SELECT *
FROM student5
LEFT JOIN course
ON student5.id=course.id;

SELECT *
FROM student5
RIGHT JOIN course
ON student5.id=course.id;

SELECT *
FROM student5
LEFT JOIN course
ON student5.id=course.id
UNION
SELECT *
FROM student5
RIGHT JOIN course
ON student5.id=course.id;

CREATE TABLE emp(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO emp (id, name, manager_id)
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);

SELECT * 
FROM emp as a
JOIN emp as b
ON a.id=b.manager_id;

SELECT a.name as manager_name, b.name
FROM emp as a
JOIN emp as b
ON a.id=b.manager_id;
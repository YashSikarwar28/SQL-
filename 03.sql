CREATE DATABASE third;
USE third;

CREATE TABLE student1(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(40)
);

INSERT INTO dept
VALUES
(101,"English"),
(102,"IT");

UPDATE dept
SET id=103
WHERE id=102;

SELECT * FROM dept;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101,"Alice",101),
(102,"Bob",102);
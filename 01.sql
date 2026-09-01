-- Creating and inserting logic in SQL
	
CREATE DATABASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student VALUES
(1,"KARAN"),
(2,"ARJUN"),
(3,"RAM");
INSERT INTO student VALUES(4,"Shyam");

CREATE DATABASE xyz;
USE xyz;

CREATE TABLE info(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO info VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",35000);

SELECT * FROM info;

CREATE TABLE temp(
	id INT,
    sal INT DEFAULT 20000
);

INSERT INTO temp (id) VALUES(1);
SELECT * FROM temp;

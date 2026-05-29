

USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50) 
);
CREATE TABLE teacher(
rollno INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT ,
FOREIGN KEY(dept_id) REFERENCES dept(id)
);
INSERT INTO student 
(rollno ,name ,marks,grade, city)
VALUES
(101,"aman",88,"c","Pune"),
(102,"Raman",89,"d","Delhi"),
(103,"Sanjeet",90,"e","Delhi"),
(104,"Yash",96,"f","Mumbai"),
(105,"Yashu",96,"g","Mumbai");
SELECT name,marks,grade,city FROM student;
SELECT * FROM student;
SELECT city,name, COUNT(rollno)
FROM student
GROUP BY city,name ; 

SELECT city, AVG(marks)
FROM student
GROUP by city
ORDER BY AVG(marks) ASC ; 
 
 SELECT grade,COUNT(ROLLNO)
FROM student
GROUP by grade
ORDER BY grade ASC ; 
SELECT city
FROM student
WHERE grade="e"
GROUP by city
HAVING MAX(marks)>=80;
SET SQL_SAFE_UPDATES=0;
UPDATE student
SET marks=marks+1;

DELETE FROM student
WHERE marks<33;
 SELECT *FROM student;
 ALTER TABLE student
 ADD COLUMN age INT NOT NULL DEFAULT 19;
 ALTER TABLE student
 MODIFY COLUMN age VARCHAR(2);
 ALTER TABLE student
CHANGE  age stu_age INT;
 INSERT INTO student
 (rollno, name,marks ,stu_age)
 VALUES
 (107,"GARBAGE",68,100);
  ALTER TABLE stu
RENAME TO   student;
truncate TABLE student;

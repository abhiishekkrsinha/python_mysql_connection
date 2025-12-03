USE school;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    marks int
);
desc students ;

INSERT INTO students (student_id, first_name, marks) VALUES
(1, 'Alice', 85),
(2, 'Bob', 92),
(3, 'Charlie', 78),
(4, 'David', 90),
(5, 'Eva', 88);
SELECT * FROM students;

SELECT * FROM students;
INSERT INTO students(6,'Abhishek',89)
SELECT * FROM students;
SELECT first_name from students;
select first_name,student_id from students;
SELECT* FROM students WHERE student_id = 1;
UPDATE students set marks=70 where student_id=1;
SELECT * from students;
update students set first_name='Abhishek' WHERE student_id=2;
SELECT * from students;
UPDATE students set marks=98 WHERE student_id=3;
SELECT * from students;
DELETE FROM students WHERE student_id=4;
SELECT * from students;
ALTER TABLE students add column grade VARCHAR(2);
UPDATE students set grade='A' WHERE marks >=90;
UPDATE students set grade='B' WHERE marks >=80 AND marks <90;
UPDATE students set grade='C' WHERE marks <80;
SELECT * from students;
SELECT sum(marks) FROM students;
SELECT avg(marks) FROM students;
SELECT * FROM students;
SELECT count(first_name) FROM students; 
select max(marks) from students;
SELECT * FROM students ORDER BY marks DESC;
SELECT * FROM students where first_name like 'A%'; 
SELECT * FROM students where first_name like '%a'; 
SELECT * FROM students where first_name like '%e%'; 
select * FROM students WHERE first_name like '_b%';
select * FROM students WHERE first_name like '%v_';
CREATE table emplyees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);
INSERT into emplyees VALUES
(1,'John','HR'),
(2,'Jane','Finance'),
(3,'Doe','IT'),
(4,'Smith','Marketing');
SELECT * FROM emplyees;

SELECT * FROM students;

SELECT * FROM students inner JOIN emplyees ON student_id=id;
SELECT * FROM students LEFT JOIN emplyees ON student_id=id;
SELECT * FROM students RIGHT JOIN emplyees ON student_id=id;
SELECT * FROM students cross JOIN emplyees;
INSERT INTO students VALUES
(7,'Frank',75,'C');
SELECT * FROM students;
delete database demo_db;
-- Creating tables
CREATE TABLE student (
  student_id INT PRIMARY KEY,
  name VARCHAR(40),
  major VARCHAR(40)
  -- PRIMARY KEY(student_id)
);

DESCRIBE student; -- this is to describe the table columnx

ALTER TABLE student ADD gpa DECIMAL(4.2);

-- Inserting Data
INSERT INTO student VALUES(1, 'Jack', 'Biology', 4.3);
INSERT INTO student VALUES(2, 'Kate', 'Sociology',4.4);

INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student (student_id, major, name ) VALUES(4,  'Biology', 'Jack');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science', 4);

select * from student 
-- Updating Columns values
update student 
set major = 'Biological Sciences' where major = "Biology"

update student 
set name = 'Johnson' where name ='Jack'

-- Inserting New values 
INSERT INTO student VALUES(10, 'Joseph', 'Economics', 4);

-- Using queries to explore student table
SELECT *
FROM student;

SELECT student.name, student.major
FROM student;

SELECT *
FROM student
WHERE name = 'Joseph';

SELECT *
FROM student
WHERE student_id = 2;

SELECT *
FROM student
WHERE major = 'Biology' AND student_id > 1;

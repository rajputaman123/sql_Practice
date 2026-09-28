create database practice;
use practice;
show databases;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    manager_id INT,
    city VARCHAR(50)
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT,
    marks INT,
    mentor_id INT,
    city VARCHAR(50)
);

Select* from employee;
select* from student;

INSERT INTO employee (emp_id, emp_name, dept_id, salary, manager_id, city) VALUES
(1, 'Amit', 101, 55000, NULL, 'Delhi'),
(2, 'Rohit', 102, 48000, 1, 'Mumbai'),
(3, 'Sneha', 101, 62000, 1, 'Delhi'),
(4, 'Pooja', 103, 45000, 2, 'Pune'),
(5, 'Vikas', 102, 51000, 2, 'Mumbai'),
(6, 'Anjali', 104, 70000, NULL, 'Chennai'),
(7, 'Rahul', 101, 58000, 3, 'Delhi'),
(8, 'Neha', 105, 39000, 6, 'Bangalore'),
(9, 'Karan', 103, 47000, 4, 'Pune'),
(10, 'Divya', 106, 65000, NULL, 'Hyderabad');

INSERT INTO student (student_id, student_name, dept_id, marks, mentor_id, city) VALUES
(1, 'Aarav', 101, 85, NULL, 'Delhi'),
(2, 'Ishita', 102, 78, 1, 'Mumbai'),
(3, 'Manav', 107, 92, 1, 'Jaipur'),
(4, 'Riya', 103, 65, 2, 'Pune'),
(5, 'Sameer', 108, 73, 2, 'Lucknow'),
(6, 'Tanvi', 104, 88, NULL, 'Chennai'),
(7, 'Yash', 101, 55, 3, 'Delhi'),
(8, 'Simran', 109, 60, 6, 'Kolkata'),
(9, 'Nikhil', 103, 47, 4, 'Pune'),
(10, 'Priya', 110, 99, NULL, 'Ahmedabad');

select* from employee;
select * from student;

-- 1. Write a query to get the names of employees along with the names of students who belong to the same department. --

select *
from employee e
inner join student s
on e.dept_id = s.dept_id;

-- the exact answer  is below --

select e.emp_name, s.student_name ,e.dept_id
from employee e
inner join student s
on e.dept_id = s.dept_id;

-- 2. Write a query to display emp_name, salary and student_name for all matching dept_id values between employee and student.--

select e.emp_name,e.salary,s.student_name
from employee e
inner join student s
on e.dept_id = s.dept_id;

-- 3. Write a query to find the employee and student names who belong to the same city using INNER JOIN. --

select e.emp_name , s.student_name,e.city 
from employee e
inner join student s 
on e.city = s.city ;

-- 4 . Write a query to get emp_id, emp_name, student_id and student_name where the department matches in both tables.--

select e.emp_id,e.emp_name,s.student_id,s.student_name
from employee e
inner join student s
on e.dept_id = s.dept_id;
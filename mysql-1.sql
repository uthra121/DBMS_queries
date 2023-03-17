USE store;

SELECT *
FROM customers;

-- NULL operatores
USE store;

-- select customers where phone is null
select*
from customers

-- where phone= null (NULL = NULL) is not correct NULL
where phone is null;

-- select customers where phone is not null
select*
from customers
where phone is not null;

-- Exercise: Get the orders that are not shipped
-- multiple column sorting

USE exercise_hr;
-- Sort employees based according to their departments and by their first names within the departments.
-- get top 3 customers
select*
from customers
LIMIT 3;

-- get top 3 loyal customers(order by points)
select*
from customers
order by points desc
LIMIT 3;

-- get customers on page 2
select*
from customers
LIMIT 3,3;

-- the limit clause should always come at the end.
-- the order of the clauses matter. SELECT-> FROM -> optionally WHERE -> optionaly ORDER BY -> LIMIT
-- Not following order gives error.


USE exercise_hr;

SELECT*
FROM employees
WHERE first_name = 'Lex';

SELECT*
FROM employees
WHERE employee_id = 102;

SELECT*
FROM employees
ORDER BY hire_date;

EXPLAIN
SELECT*
FROM employees
WHERE last_name = 'De Haan';

-- to count
SELECT COUNT(*)
FROM employees;


CREATE DATABASE IF NOT EXISTS project;

USE project;

/* SYNTAX for creating table

CREATE TABLE table_name (
column1 COLUMN1_DATATYPE(size) CONSTRAINTS,
column2 COLUMN2_DATATYPE(size) CONSTRAINTS,
);

*/


CREATE TABLE user (
username VARCHAR(50) PRIMARY KEY,
address VARCHAR (255), 
email VARCHAR(100),
password VARCHAR(50),
dob DATE,
phone VARCHAR(20)
);

/* 
Numbers: INT, BIGINT
Decimal numbers (eg.3.14) : DOUBLE
Strings:
     * if fixed length: CHAR(2)
     * if variable length: VARCHAR(50)
Date: DATE
Date and time: DATETIME
Boolean: TINYINT
*/

DESCRIBE user;

CREATE TABLE IF NOT EXISTS users (
user_id INT PRIMARY KEY,
user_name VARCHAR(50),
user_mobile VARCHAR(50),
user_email VARCHAR(100),
user_address VARCHAR(225),
);

DESCRIBE user;

-- To add column

ALTER TABLE user
ADD whatsapp_no INT;

-- for INT there is no need to use limit  --

DESCRIBE user;

-- To modify column name

ALTER TABLE user
MODIFY whatsapp_no VARCHAR(50);

DESCRIBE user;

-- To delet ecolumn

ALTER TABLE user
DROP whatsapp_no;

DESCRIBE user;

-- To rename a column name --

ALTER TABLE user
RENAME COLUMN dob TO date_of_birth;

DESCRIBE user;

ALTER TABLE user
DROP date_of_birth;

DESCRIBE user;

ALTER TABLE user
ADD date_of_birth DATE;

DESCRIBE user;

-- To delete table --

DROP TABLE user;

-- Read the table

SELECT *
FROM user;

-- Insert data in the table --

SELECT *
FROM user;

INSERT INTO user (username, first_name, last_name, email, password, dob, phone)
VALUES ('Uthra', 'Uthra', 'Boopathy', 'abc1234@gmail.com', 'Uthra@2343', '2004-08-17', '7418679291');

INSERT INTO user (username, first_name, last_name, email, password, dob, phone)
VALUES ('user1', 'user', '1', 'user1@gmail.com', 'user@12', '2004-03-05', '98465737813'),
('user2', 'user', '2', 'user2@gmail.com', 'user@12', '2004-02-07', '98465737813'),
('user3', 'user', '3', 'user3@gmail.com', 'user@12', '2004-03-05', '98465737813'),
('user4', 'user', '4', 'user4@gmail.com', 'user@12', '2004-06-20', '84567812313'),
('user5', 'user', '5', 'user5@gmail.com', 'user@12', '2004-01-30', '75678762313'),
('user6', 'user', '6', 'user6@gmail.com', 'user@12', '2004-08-10', '63987652813'),
('user7', 'user', '7', 'user7@gmail.com', 'user@12', '2004-01-02', '98348972348'),
('user8', 'user', '8', 'user8@gmail.com', 'user@12', '2004-09-06', '79832476456'),
('user9', 'user', '9', 'user9@gmail.com', 'user@12', '2004-12-03', '91234987763');



-- update few values in the user table

update user
set first_name = 'ram'
where username= 'Uthra';

update user
set first_name = 'sesslyn'
where username= 'user2';

update user
set first_name = 'meena'
where username= 'user3';

SELECT *
FROM user;

-- DELETE datas from the table --

DELETE FROM user
WHERE username = 'user5';

DELETE FROM user
WHERE username = 'user8';

DELETE FROM user
WHERE username = 'user9';

USE exercise_hr;

-- Write a query to find the employees working in the department IT -- 

SELECT *
FROM departments;

SELECT * 
FROM departments
WHERE department_name = "IT";

SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id = 60;

SELECT *
FROM employees INNER JOIN departments
ON employees.department_id = departments.department_id;

SELECT *
FROM employees INNER JOIN departments
ON employees.department_id = departments.department_id 
WHERE department_name = "IT";

SELECT first_name, last_name,e.department_id, department_name
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id;


--  1. Write a query to get the total salaries payable to employees.
SELECT SUM(salary) as total_salary_payable 
FROM employees;

-- 2.Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees;

-- 3.Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary) AS average_salary,  COUNT(*) AS 'number of employees'
FROM employees;

-- 4.Write a query to get the number of employees working with the company.
SELECT COUNT(*) AS 'number of employees'
FROM employees;

-- 5.Write a query to get the number of distinct jobs available in the employees table.
SELECT COUNT(DISTINCT department_name) AS number_of_jobs 
FROM departments;

-- 6.Write a query get all first name from employees table in upper case.
SELECT UPPER(first_name) AS 'First Name'
FROM employees;

-- 7.Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTRING(first_name,1,3) 
FROM employees;

-- 8.Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table
SELECT CONCAT(first_name, last_name) AS 'Employee_name'
FROM employees;

-- 9.Write a query to get the length of the employee names ('<first name> <last name>') from employees table. --
SELECT CHAR_LENGTH ("first_name, last_name") AS LengthOfNames
FROM employees;

-- 10.Write a query to get monthly salary (round 2 decimal places) of each and every employee
SELECT employee_id, first_name, last_name, ROUND(salary/12, 2) as monthly_salary
FROM employees;



-- Write a query to get the total salaries payable to employees --

SELECT SUM(salary) as total_salary_payable
FROM employees;

-- Write a query to get the length of the employee names ('<first name> <last name>') from employees table. --

SELECT CHAR_LENGTH ("first_name, last_name") AS LengthOfNames
FROM employees;

-- find the count of employees in every departments

SELECT department_id, COUNT(*) AS "number of employees"
FROM employees
GROUP BY department_id;

-- Write the join query to get the information of the manager of every employe -- 

SELECT *
FROM employees AS e INNER JOIN employees AS m
ON e.manager_id = m.employee_id;

SELECT e.employee_id AS "Employee ID",
CONCAT (e.first_name, e.last_name) AS "employee_name",
m.employee_id AS "manager_id",
CONCAT (m.first_name, m.last_name) AS "manager_name"
FROM employees AS e INNER JOIN employees AS m
ON e.manager_id = m.employee_id;

SELECT *
FROM locations
WHERE city = "London";

-- 1. Write a query to find the name (first_name, last name), department ID and name of all the employees.
 
SELECT first_name,last_name,e.department_id
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id;
 
--  2. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
 
SELECT first_name,last_name,e.department_id,city,job_title
FROM employees AS e INNER JOIN departments AS d INNER JOIN locations AS n INNER JOIN jobs AS j
ON e.department_id = d.department_id
WHERE city = 'london';
 
--  3. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
SELECT e.employee_id AS 'Emp_Id', e.last_name AS 'Employee', m.employee_id AS 'Mgr_Id', m.last_name AS 'Manager' 
FROM employees AS e INNER join employees AS m 
ON (e.manager_id = m.employee_id);

--  4. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > (
    SELECT hire_date
    FROM employees
    WHERE last_name = 'Jones'
)
ORDER BY hire_date;

USE exercise_hr;

-- 5.Write a query to get the department name and number of employees in the department. (Requires GROUP BY)

SELECT departments.department_name, COUNT(employees.employee_id) as num_employees
FROM employees INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name;

-- 6.Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.

SELECT e.employee_id, n.job_title, DATEDIFF(j.end_date, j.start_date)  AS days_worked,e.department_id
FROM employees AS e INNER JOIN job_history AS j INNER JOIN jobs AS n
ON e.job_id = n.job_id INNER JOIN departments as d
ON e.department_id = d.department_id
WHERE e.department_id = 90;

USE exercise_hr;

-- 7.Find the CEO from the employee table.

SELECT *
FROM employees AS e INNER JOIN employees AS m
ON e.manager_id = m.employee_id
WHERE m.manager_id = null;
 

USE website;

ALTER TABLE users
ADD CHECK (password >= 8);

CREATE TABLE IF NOT EXISTS products (
product_id VARCHAR (10) PRIMARY KEY,
name VARCHAR (25),
actual_price int (15),
current_price int (15),  
discount_percent int (3)
);

DESCRIBE orders;

ALTER TABLE products
ADD seller_id VARCHAR(10);

ALTER TABLE users
ADD seller_id VARCHAR(10);

CREATE TABLE IF NOT EXISTS wishlist (
product_id VARCHAR (10) PRIMARY KEY,
user_id VARCHAR (10),
name VARCHAR (25),
current_price int);

CREATE TABLE IF NOT EXISTS orders (
order_id VARCHAR (10),
user_id VARCHAR (10),
seller_id VARCHAR (10),
product_id VARCHAR (10),
order_status VARCHAR (30));

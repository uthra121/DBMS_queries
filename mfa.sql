CREATE DATABASE IF NOT EXISTS todos;

USE todos;

CREATE TABLE IF NOT EXISTS todos 
(id INT PRIMARY KEY AUTO_INCREMENT,
task VARCHAR(255),
dueDate DATE,
isEditing TINYINT);

INSERT INTO todos (task, dueDate, isEditing) VALUES 
('Finish writing report', '2023-03-05', 0),
('Buy groceries', '2023-02-20', 0),
('Book dentist appointment', '2023-02-21', 0),
('Prepare for presentation', '2023-03-02', 0),
('Clean the house', '2023-02-24', 0),
('Go for a run', '2023-02-17', 0),
('Read a book', '2023-02-22', 0),
('Meet with client', '2023-03-01', 0),
('Pay rent', '2023-02-28', 0),
('Plan vacation', '2023-03-10', 0),
('Attend yoga class', '2023-02-18', 0),
('Finish coding project', '2023-03-07', 0),
('Visit grandparents', '2023-02-27', 0),
('Buy new shoes', '2023-02-25', 0),
('Do laundry', '2023-02-19', 0),
('Take dog for a walk', '2023-02-21', 0),
('Send out invoices', '2023-03-04', 0),
('Get a haircut', '2023-02-23', 0),
('Meet with colleagues', '2023-02-28', 0),
('Create marketing plan', '2023-03-03', 0),
('Practice guitar', '2023-02-20', 0),
('File taxes', '2023-03-15', 0),
('Buy birthday gift', '2023-03-08', 0),
('Go to the gym', '2023-02-19', 0),
('Make doctor appointment', '2023-02-23', 0),
('Finish online course', '2023-03-06', 0),
('Clean out closet', '2023-02-24', 0),
('Meet with mentor', '2023-03-01', 0),
('Pay credit card bill', '2023-03-02', 0),
('Go on a hike', '2023-02-18', 0),
('Start new project', '2023-03-05', 0),
('Buy plane tickets', '2023-03-10', 0),
('Meet with friend', '2023-03-08', 0),
('Get oil change', '2023-02-23', 0),
('Organize desk', '2023-02-21', 0),
('Submit job application', '2023-03-07', 0),
('Buy new phone', '2023-02-25', 0),
('Go to dentist', '2023-03-12', 0),
('Clean out fridge', '2023-02-24', 0),
('Finish book', '2023-02-22', 0),
('Attend networking event', '2023-03-04', 0),
('Take online course', '2023-02-20', 0),
('Plan dinner party', '2023-03-10', 0),
('Meet with business partner', '2023-03-01', 0),
('Submit proposal', '2023-03-05', 0);



-- todos due tomorrow

SELECT *
FROM todos
WHERE dueDate = '2023-02-17';


-- todos order by dueDate

USE todos;

SELECT *
FROM todos
ORDER BY dueDate ASC;

-- find all tasks that contain 'dry'

SELECT *
FROM todos
WHERE task LIKE '%dry%';

-- find all tasks due from next week onwards (From 20-2 onwards)

SELECT *
FROM todos
WHERE dueDate LIKE '2023-02-20';

-- find all tasks due in the next week (20-2 to 24-02) 

SELECT *
FROM todos
WHERE dueDate REGEXP '2023-02-20 2023-02-24';

-- find all tasks due on 2023-02-17, 2023-02-24, 2023-03-03

SELECT *
FROM todos
WHERE dueDate REGEXP '2023-02-17|2023-02-24|2023-03-03';

-- todos order by dueDate and for each dueDate, order by task alphabetically in ascending order 

SELECT *
FROM todos
ORDER BY task ASC;

-- todos starting with Buy and ending with shoes

SELECT *
FROM todos
WHERE task REGEXP '^buy|$shoes';

-- Display the count of todos in the database


CREATE DATABASE countries;

USE countries;


CREATE TABLE IF NOT EXISTS countries  (
country_id VARCHAR (2) PRIMARY KEY,
country_name VARCHAR (50),
region_id INT );

DESCRIBE countries;

ALTER TABLE countries
ADD COLUMN country_code VARCHAR (3);

ALTER TABLE countries
DROP COLUMN country_code;

INSERT INTO countries (country_id, country_name, region_id)
VALUES ('ID', 'INDIA', '1234'); 

SELECT *
FROM countries;

INSERT INTO countries (country_id, country_name)
VALUES ('PK', 'PAKISTHAN');

INSERT INTO countries 
VALUES ('CN', 'CANADA', '5678'),
('AF', 'AFGHANISTHAN', '9183'),
('NP', 'NEPAL',null);

UPDATE countries
SET region_id = '1234567890'
WHERE country_id = 'AF';

UPDATE countries
SET region_id = '1234567890'
WHERE country_id = 'CN';

UPDATE countries
SET region_id = '1234567890'
WHERE country_id = 'NP';

UPDATE countries
SET region_id = '1234567890'
WHERE country_id = 'PK';

UPDATE countries
SET region_id = '1234567890'
WHERE country_id = 'ID';

DROP TABLE countries;

CREATE DATABASE website;

USE website;

CREATE TABLE IF NOT EXISTS users (
user_id VARCHAR (10) PRIMARY KEY,
user_name VARCHAR (20),
phonenumber VARCHAR (20),
password VARCHAR (15),
address VARCHAR (255),
designation VARCHAR (10),
gender VARCHAR (20),
email VARCHAR (30)
);

DESCRIBE users;








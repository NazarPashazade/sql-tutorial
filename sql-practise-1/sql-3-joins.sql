
CREATE TABLE departments(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

INSERT INTO departments (name) VALUES
('HR'),
('Engineering'),
('Marketing'),
('Sales');


CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	age INT,
	dept_id INT,
	FOREIGN KEY(dept_id) REFERENCES departments(id)
);

INSERT INTO employees (name, age) VALUES
('Alice', 30),
('Bob', 25),
('Charlie', 28),
('David', 35);



-- SELECT Queries
SELECT * FROM employees;
SELECT * FROM departments;



-- INNER JOIN
SELECT  
e.id as emp_id,
e.name as emp_name,
e.age as emp_age,
d.name as dep_name

FROM employees AS e  
INNER JOIN  
departments AS d
ON e.dept_id=d.id;



-- FULL JOIN
SELECT  
e.id as emp_id,
e.name as emp_name,
e.age as emp_age,
d.name as dep_name

FROM employees AS e  
FULL JOIN  
departments AS d
ON e.dept_id=d.id;



-- LEFT JOIN
SELECT  
e.id as emp_id,
e.name as emp_name,
e.age as emp_age,
d.name as dep_name

FROM employees AS e  LEFT JOIN  departments AS d
ON e.dept_id=d.id



-- RIGHT JOIN
SELECT  
e.id as emp_id,
e.name as emp_name,
e.age as emp_age,
d.name as dep_name

FROM employees AS e  RIGHT JOIN  departments AS d
ON e.dept_id=d.id



-- ✅ AVERAGE AGE of EMPLOYEE for every department


SELECT d.name, AVG(e.age)
FROM employees AS e  
INNER JOIN  
departments AS d
ON e.dept_id=d.id
GROUP BY d.name

-- ✅ NUMBER OF EMPLOYEES in each department

SELECT d.name, COUNT(e.id)
FROM employees AS e  
INNER JOIN  
departments AS d
ON e.dept_id=d.id
GROUP BY d.name

-- ✅ LIST of EMPLOYEES with their DEPARTMENT names

SELECT e.name,d.name
FROM employees AS e  
LEFt JOIN  
departments AS d
ON e.dept_id=d.id

-- ✅ EMPLOYEES who DO NOT belong to any department

SELECT e.name,d.name
FROM employees AS e  
LEFt JOIN  
departments AS d
ON e.dept_id=d.id
WHERE e.dept_id IS NULL

-- ✅ DEPARTMENTS with NO EMPLOYEES

SELECT e.name,d.name
FROM employees AS e  
RIGHT JOIN  
departments AS d
ON e.dept_id=d.id
WHERE e.dept_id IS NULL

-- ✅ DEPARTMENTS with more than 2 employees

SELECT d.name, COUNT(e.id)
FROM employees AS e  
RIGHT JOIN  
departments AS d
ON e.dept_id=d.id
GROUP BY d.name
HAVING COUNT(e.id)=2

-- ✅ YOUNGEST EMPLOYEE in each department

SELECT d.name, MIN(e.age)
FROM employees AS e  
RIGHT JOIN  
departments AS d
ON e.dept_id=d.id
GROUP BY d.name


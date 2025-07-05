DELETE FROM employees;

-- Remove all rows (make table empty)
TRUNCATE TABLE employees;

-- Add new column 'address'
ALTER TABLE employees
ADD COLUMN address TEXT;

-- Change the 'address' column type to VARCHAR(50)
ALTER TABLE employees
ALTER COLUMN address TYPE VARCHAR(50);

-- Remove the 'address'
ALTER TABLE employees
DROP COLUMN address;

-- Rename column 'name' to 'first_name'
ALTER TABLE employees
RENAME COLUMN name TO first_name;

-- Rename the table name from 'employees' to 'workers'
ALTER TABLE employees
RENAME TO workers;

-- Add comment to 'workers' table
COMMENT ON TABLE workers IS 'Stores employee records including personal details';

-- Add comment to 'age' column
COMMENT ON COLUMN workers.age IS 'Age of the employee';

SELECT * FROM public.workers;
-- UNIONS

SELECT * 
FROM employee_demographics
UNION
SELECT *
FROM employee_salary;

-- remove duplicates
-- UNION = UNION DISTINCT
SELECT age,gender
FROM employee_demographics
UNION
SELECT first_name , last_name
FROM employee_salary;

SELECT first_name,last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name , last_name
FROM employee_salary;

-- UNION ALL
-- duplicates  are included
SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name , last_name
FROM employee_salary;

-- find highly paid employees in both genders who are old

SELECT first_name ,last_name,'old man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION DISTINCT
SELECT first_name ,last_name,'old lady' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION DISTINCT
SELECT first_name ,last_name,'high_salary' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name,last_name;
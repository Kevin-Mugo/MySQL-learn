SELECT *
FROM employee_salary;

SELECT *
FROM employee_salary
WHERE  salary > 75000;

SELECT *
FROM parks_departments
WHERE department_id = 5; 

SELECT *
FROM employee_demographics
WHERE gender != 'Male';

SELECT *
FROM employee_demographics
WHERE (birth_date BETWEEN '1985-01-01' AND '1990-12-31')
   OR (birth_date BETWEEN '1995-01-01' AND '2000-12-31');
   
SELECT *
FROM employee_demographics
WHERE (birth_date BETWEEN '1985-01-01' AND '1990-12-31')
   AND gender = 'Female';
   
SELECT *
FROM employee_demographics
WHERE (birth_date BETWEEN '1985-01-01' AND '1990-12-31')
   OR NOT gender = 'Female';
   
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'b__';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';



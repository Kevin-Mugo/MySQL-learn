SELECT *
FROM employee_demographics;

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender , AVG(age) , MAX(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_salary;

SELECT dept_id , AVG(salary)
FROM employee_salary
GROUP BY dept_id;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;
-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY  birth_date DESC;

SELECT *
FROM employee_demographics
ORDER BY  birth_date ASC;

SELECT *
FROM employee_demographics
ORDER BY  gender, age;

-- position ordering
SELECT *
FROM employee_demographics
ORDER BY  6;




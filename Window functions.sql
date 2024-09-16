-- Window functions

SELECT *
FROM employee_demographics;

-- groupby

SELECT gender, AVG(salary)
FROM employee_demographics edem
JOIN employee_salary esal
ON edem.employee_id = esal.employee_id
GROUP BY gender;

-- similar thing with a window function
SELECT gender, AVG(salary) OVER 
() AS average_salary
FROM employee_demographics edem
JOIN employee_salary esal
ON edem.employee_id = esal.employee_id
;

-- partition by gender

SELECT gender, AVG(salary) OVER 
(
PARTITION BY gender
) AS average_salary
FROM employee_demographics edem
JOIN employee_salary esal
ON edem.employee_id = esal.employee_id
;

-- Unlike groupby , window function is not affected by other variables in the select statement.
SELECT edem.first_name , esal.last_name, gender, AVG(salary) OVER 
(
PARTITION BY gender
) AS average_salary
FROM employee_demographics edem
JOIN employee_salary esal
ON edem.employee_id = esal.employee_id
;

-- SUM
-- 'Unbounded preceeding and the current row ' is the default window frame.
SELECT edem.first_name , esal.last_name, gender ,salary, SUM(salary) OVER 
(
PARTITION BY gender
ORDER BY edem.employee_id
) AS running_total_salary
FROM employee_demographics edem
JOIN employee_salary esal
ON edem.employee_id = esal.employee_id
;

-- analytic numbering functions
-- ROW NUMBER()
SELECT edem.first_name , esal.last_name, gender ,salary, ROW_NUMBER() OVER 
(

) AS row_no
FROM employee_demographics edem
JOIN employee_salary esal
ON edem.employee_id = esal.employee_id
;

-- RANKand DENSE RANK
-- positional vs numerical

SELECT edem.first_name , esal.last_name, gender ,salary, 
ROW_NUMBER() OVER (PARTITION BY gender ORDER BY salary DESC ) AS row_no,
RANK() OVER (PARTITION BY gender ORDER BY salary DESC ) AS rank_no
FROM employee_demographics edem
JOIN employee_salary esal
ON edem.employee_id = esal.employee_id
;

 


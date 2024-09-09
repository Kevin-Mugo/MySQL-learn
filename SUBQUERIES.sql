-- Subqueries
-- Used in SELECT ,FROM and WHERE statements

SET profiling = 1;

SELECT*
FROM employee_demographics;

SELECT*
FROM employee_salary;

-- select employees who work only in actual Park and recreation dep

SELECT* 
FROM employee_demographics
WHERE employee_id IN (
                   SElECT employee_id
                   FROM employee_salary
                   WHERE dept_id = 1
                   );
                   
-- Similar operation with join
                   
SELECT dem.employee_id,dem.first_name,dem.last_name,age,gender,birth_date
FROM employee_demographics dem
LEFT JOIN employee_salary  sal
ON dem.employee_id = sal.employee_id
WHERE dept_id = 1;

-- test query performance .
SHOW PROFILES; 

-- look at salaries and use the next column to compare with average salary.
SELECT  employee_id, salary ,(SELECT avg(salary)
FROM employee_salary) AS average_salary
FROM employee_salary;

-- group by gender and use aggregate functions in employee_demographics
SELECT gender,avg(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- find in the gender the avg of avg age , max age,min age,and count.
SELECT AVG(avg_age) , AVG(max_age),AVG(min_age),AVG(avg_count)
FROM (
SELECT gender,
avg(age) AS avg_age,
MAX(age) AS max_age,
MIN(age) AS min_age,
COUNT(age) AS avg_count
FROM employee_demographics
GROUP BY gender
) AS aggregated_table
;


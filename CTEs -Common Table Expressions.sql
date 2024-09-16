-- CTES

WITH my_CTE AS
(
SELECT gender,
       AVG(salary) as avg_salary,
       MAX(salary) as max_salary,
       MIN(salary) as min_salary,
       COUNT(salary) as count
FROM employee_demographics edem
JOIN employee_salary esal
   ON edem.employee_id = esal.employee_id
GROUP BY gender  
)
SELECT *
FROM my_CTE
;  

WITH my_CTE2 AS
(
SELECT gender,
       AVG(salary) as avg_salary,
       MAX(salary) as max_salary,
       MIN(salary) as min_salary,
       COUNT(salary) as count
FROM employee_demographics edem
JOIN employee_salary esal
   ON edem.employee_id = esal.employee_id
GROUP BY gender  
)
SELECT AVG(avg_salary) AS allgender_avg_salary
FROM my_CTE2
;  

-- doing the same using a subquery
SELECT AVG(avg_salary) AS allgender_avg_salary
FROM (
      SELECT gender,
       AVG(salary) as avg_salary,
       MAX(salary) as max_salary,
       MIN(salary) as min_salary,
       COUNT(salary) as count
FROM employee_demographics edem
JOIN employee_salary esal
   ON edem.employee_id = esal.employee_id
GROUP BY gender  
     ) AS my_subquery;
     
 -- Using multiple CTEs within a query    
WITH emp_demographics AS(
SELECT employee_id,gender,birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-09'
),
emp_salary AS(
SElECT employee_id,salary
FROM employee_salary
WHERE salary > 60000
)
SELECT *
FROM emp_demographics
JOIN emp_salary
  ON emp_demographics.employee_id = emp_salary.employee_id;
  
-- overiding column names using CTE.

WITH my_CTE (Gender,Avg_sal,Max_sal,Min_sal,Count)AS
(
SELECT gender,
       AVG(salary) as avg_salary,
       MAX(salary) as max_salary,
       MIN(salary) as min_salary,
       COUNT(salary) as count
FROM employee_demographics edem
JOIN employee_salary esal
   ON edem.employee_id = esal.employee_id
GROUP BY gender  
)
SELECT *
FROM my_CTE
;  
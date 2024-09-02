-- JOINS

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
ON ed.employee_id = es.employee_id;

SELECT ed.employee_id,ed.first_name,age,occupation
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
ON ed.employee_id = es.employee_id;

-- LEFT JOIN / LEFT OUTER JOIN

SELECT *
FROM employee_demographics AS ed
LEFT JOIN employee_salary AS es
ON ed.employee_id = es.employee_id;

SELECT ed.employee_id,ed.first_name,age,occupation
FROM employee_demographics AS ed
LEFT JOIN employee_salary AS es
ON ed.employee_id = es.employee_id;

-- RIGHT JOIN / RIGHT OUTER JOIN
SELECT *
FROM employee_demographics AS ed
RIGHT JOIN employee_salary AS es
ON ed.employee_id = es.employee_id;


SELECT ed.employee_id,ed.first_name,age,occupation
FROM employee_demographics AS ed
RIGHT JOIN employee_salary AS es
ON ed.employee_id = es.employee_id;

-- SELF JOIN
SELECT *
FROM employee_salary;

-- note on employee_id and dept_id in the salary table

SELECT *
FROM employee_salary es1
JOIN employee_salary es2
   ON es1.employee_id = es2.employee_id;
   
SELECT *
FROM employee_salary es1
JOIN employee_salary es2
   ON es1.employee_id = es2.dept_id;
   
-- assign employee id to the next employee id

SELECT *
FROM employee_salary es1
JOIN employee_salary es2
   ON es1.employee_id+1 = es2.employee_id;
   
SELECT es1.employee_id,es1.first_name,es1.last_name,es2.employee_id,es2.first_name,es2.last_name
FROM employee_salary es1
JOIN employee_salary es2
   ON es1.employee_id+1 = es2.employee_id;
   
-- Joining multiple tables

SELECT *
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
ON ed.employee_id = es.employee_id;

SELECT *
FROM parks_departments;

SELECT *
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
       ON ed.employee_id = es.employee_id
INNER JOIN parks_departments AS pd
       ON es.dept_id = pd.department_id;




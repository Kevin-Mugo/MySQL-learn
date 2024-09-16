-- Temporary tables
CREATE TEMPORARY TABLE temp_table(
first_name VARCHAR(50),
last_name VARCHAR(50),
favourite_documementary VARCHAR(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table 
VALUES('Kamau','Mwangi','Deadliest roads');

DROP Table  temp_table;

SELECT * 
FROM employee_salary;

-- temp table where salary > 50000
CREATE TEMPORARY TABLE salary_over_50k(
SELECT *
FROM employee_salary
WHERE salary>=50000
);

SELECT employee_id,salary
FROM salary_over_50k;
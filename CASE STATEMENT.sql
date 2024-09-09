-- CASE STATEMENTS

SELECT *
FROM employee_demographics;

SELECT first_name,last_name,age,
CASE
    WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'old'
    WHEN age >50 THEN 'Very Old' 
END AS Age_category
FROM employee_demographics;

-- Pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

SELECT *
FROM parks_departments;

SELECT * ,
CASE
    WHEN salary <= 50000 THEN salary*1.05
    WHEN salary > 50000 THEN  salary*1.07
END as new_salary ,
CASE
 WHEN dept_id = 6 THEN salary*0.10
END as bonus
    
FROM employee_salary;



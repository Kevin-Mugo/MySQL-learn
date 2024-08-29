SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_salary;

SELECT first_name , age ,age+10
FROM employee_demographics;

# PEMDAS
SELECT first_name , age ,(age+10)*10+10
FROM employee_demographics;

SELECT DISTINCT (gender)
FROM employee_demographics;

SELECT DISTINCT gender,first_name
FROM employee_demographics;

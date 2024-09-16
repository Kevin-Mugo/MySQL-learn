-- Stored procedures

SELECT *
FROM  parks_and_recreation.employee_salary;

SELECT *
FROM employee_salary
WHERE salary>= 55000;

-- creating a stored procedure

CREATE PROCEDURE high_salary()
SELECT *
FROM   employee_demographics
WHERE salary >= 10000;

CALL high_salary();

DELIMITER $$
CREATE PROCEDURE high_salary3()
BEGIN 
     SELECT *
     FROM employee_salary
     WHERE salary >= 50000;
	 SELECT *
     FROM employee_salary
     WHERE salary >= 10000;
END $$
DELIMITER ;

CALL high_salary3();

-- parameter passing  in stored procedure
-- eg. get salary of employee_id = 1

DELIMITER $$
CREATE PROCEDURE high_salary4(emp_id INT)
BEGIN 
     SELECT salary
     FROM employee_salary
     WHERE employee_id = emp_id;
END $$
DELIMITER ;

CALL high_salary4(1);
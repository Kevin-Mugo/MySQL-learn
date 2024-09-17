-- Triggers and Events

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- create a trigger that auto updates employee_demographics table on insert to employee_salary table
DELIMITER $$
CREATE TRIGGER employee_sal_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
     INSERT INTO employee_demographics(employee_id,first_name,last_name)
     VALUES (NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ;     

-- testing the trigger
INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES (13,'kevin','Mugo','Data specialist',50000,1);

-- EVENTS
-- create an event that checks employee age  every month .
-- retire them if age > 60  by deleting from the database.

DElIMITER &&
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
     DELETE
     FROM employee_demographics
     WHERE age >= 60;
END &&
DElIMITER ;    

-- CHECK if event is working/active
SHOW VARIABLES; 
SHOW VARIABLES LIKE 'event%'

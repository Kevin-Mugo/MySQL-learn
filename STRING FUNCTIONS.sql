-- STRING FUNCTIONS

SELECT length('Kevin');

SELECT *
FROM employee_demographics;

-- LENGTH()

SELECT first_name , length(first_name) AS Name_length
FROM employee_demographics
ORDER BY Name_length;

-- UPPER() & LOWER()

SELECT upper('Kevin');
SELECT lower('Kevin');

SELECT first_name, upper(first_name)
FROM employee_demographics;

-- TRIM()
SELECT ('  Kevin  ' ) AS UNtrimed;
SELECT TRIM('  Kevin  ' ) AS Trimed;
SELECT ('        Kevin             ' ) AS UNtrimed, TRIM('  Kevin  ' ) AS Trimed;

-- left trim
SELECT LTRIM('               Kevin        ' ) AS LeftTrim;

-- right trim
SELECT RTRIM('               Kevin        ' ) AS RightTrim;

-- LEFT , RIGHT & SUBSTRING
SELECT first_name ,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) AS birthday_month
FROM employee_demographics;

-- REPLACE()

SELECT first_name, replace(first_name,'a','e')
FROM employee_demographics;

-- LOCATE()

SELECT locate('V','Kevin');

SELECT first_name, locate('c' ,first_name)
FROM employee_demographics;

-- CONCAT()
SELECT first_name,last_name,
      concat(first_name,'   ',last_name) AS full_name
FROM employee_demographics;





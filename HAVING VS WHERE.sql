-- Having vs Where

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;
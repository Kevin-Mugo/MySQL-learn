-- Having vs Where
-- incorrect query
SELECT gender , AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender;

-- correct query
SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;
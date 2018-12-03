# OFFSET = LIMIT * PAGE - LIMIT

USE employees;

SELECT DISTINCT last_name FROM employees
ORDER BY  last_name DESC
LIMIT 10;




SELECT first_name, last_name FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
LIMIT 5 OFFSET 45;
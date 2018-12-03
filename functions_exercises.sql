USE employees;


SELECT CONCAT(first_name, ' ', last_name) AS entire_name FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT ROUND(DATEDIFF(NOW(), hire_date) / 365) AS time_in_company,
       first_name, hire_date FROM employees;

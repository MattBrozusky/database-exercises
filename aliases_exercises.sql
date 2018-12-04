USE employees;
DESCRIBE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
    birth_date AS DOB FROM employees
    LIMIT 10;


SHOW TABLES;

DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_manager;

DESCRIBE salaries;

DESCRIBE titles;

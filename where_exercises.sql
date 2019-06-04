use employees;

SELECT gender, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%e');

SELECT emp_no, first_name, hire_date
FROM employees
WHERE hire_date LIKE ('199%');

SELECT emp_no, first_name, hire_date
FROM employees
WHERE hire_date LIKE ('%12-25');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%q%');

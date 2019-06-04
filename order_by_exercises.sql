use employees;

SELECT gender, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY last_name
DESC, first_name DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%e')
  AND last_name LIKE('e%')
ORDER BY emp_no DESC;

SELECT emp_no, first_name, hire_date
FROM employees
WHERE hire_date LIKE ('199%');

SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE birth_date LIKE ('%12-25')
  AND hire_date LIKE ('199%')
ORDER BY birth_date ASC, hire_date DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%q%')
  AND last_name NOT LIKE ('%qu%');
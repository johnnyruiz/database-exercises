use employees;

SELECT first_name, last_name FROM employees
WHERE hire_date =
(SELECT hire_date FROM employees
WHERE emp_no = 101010);


SELECT title FROM titles
    WHERE emp_no IN
(SELECT emp_no FROM employees
WHERE first_name = 'Aamod');

SELECT first_name, last_name FROM employees
WHERE emp_no IN
(SELECT emp_no FROM dept_manager
 WHERE CURRENT_DATE BETWEEN from_date AND to_date)
AND gender = 'F';


SELECT dept_name FROM departments
WHERE dept_no IN
(SELECT dept_no from dept_manager
WHERE emp_no IN
(SELECT emp_no FROM employees
WHERE emp_no IN
(SELECT emp_no FROM dept_manager
WHERE CURRENT_DATE BETWEEN from_date AND to_date)
AND gender = 'F'));

SELECT first_name, last_name
FROM employees em
JOIN salaries sal ON sal.emp_no = em.emp_no
ORDER BY sal.salary DESC
LIMIT 1;
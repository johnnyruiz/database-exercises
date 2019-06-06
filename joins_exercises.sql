USE employees;

#2.Using the example in the Associative Table Joins section as a guide, write a query that shows each department along
# with the name of the current manager for that department.

# SELECT d.dept_name Department_Name, dm.emp_no
# FROM departments as d
# JOIN dept_manager as dm
# ON dm.dept_no = d.dept_no
# JOIN departments as d
# ON d.dept_no = dm.emp_no;

SELECT  

#3.Find the name of all departments currently managed by women.

#4.Find the current titles of employees currently working in the Customer Service department.
SELECT title Title, COUNT(title) Count
FROM employees em
JOIN employees.titles title ON title.emp_no = em.emp_no
JOIN dept_emp demp ON demp.emp_no = em.emp_no
JOIN departments depart ON depart.dept_no = demp.dept_no
WHERE CURRENT_DATE BETWEEN demp.from_date AND demp.to_date
AND CURRENT_DATE BETWEEN title.from_date AND title.to_date
AND depart.dept_no = 'd009'
GROUP BY title;

#5.Find the current titles of employees currently working in the Customer Service department.

#Bonus. Find the names of all current employees, their department name, and their current manager's name.
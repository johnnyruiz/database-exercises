USE employees;

#2.Using the example in the Associative Table Joins section as a guide, write a query that shows each department along
# with the name of the current manager for that department.


SELECT depart.dept_name Department_Name, CONCAT(em.first_name,', ',em.last_name) Department_Manager
#this will show the start date and current date for the manager-->, dm.from_date Started_On, CURRENT_DATE todays_date
#Sets the alias of the employees table to em
FROM employees em
#Sets the dept_manager alias to dm
#JOINS the dept_manager table and the employee table by emp_no
JOIN dept_manager dm ON dm.emp_no = em.emp_no
#Sets the departments table alias to depart
#Joins departments and dept_manager table by the key/foreign dept_no.
JOIN departments depart ON depart.dept_no = dm.dept_no
#WHERE clause  checks to make sure the manager is current.
WHERE CURRENT_DATE BETWEEN from_date AND to_date 
#Orders the department name alphabetically
ORDER BY Department_Name;

#3.Find the name of all departments currently managed by women.

SELECT depart.dept_name Department_Name, CONCAT(em.first_name, ' ', em.last_name) Department_Manager
FROM employees em
JOIN dept_manager dm ON dm.emp_no = em.emp_no
JOIN departments depart ON depart.dept_no = dm.dept_no
WHERE CURRENT_DATE BETWEEN from_date AND to_date
AND em.gender = 'F'
ORDER BY Department_Name;


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

SELECT dep.dept_name Department_Name, CONCAT(em.first_name,', ',em.last_name) Manager, sal.salary Salary
FROM employees em
JOIN employees.dept_manager depMan ON depMan.emp_no = em.emp_no
JOIN employees.departments dep ON dep.dept_no = depMan.dept_no
JOIN employees.salaries sal ON sal.emp_no = em.emp_no
WHERE CURRENT_DATE BETWEEN depMan.from_date AND depMan.to_date
AND CURRENT_DATE BETWEEN sal.from_date AND sal.to_date
ORDER BY Department_Name;

#Bonus. Find the names of all current employees, their department name, and their current manager's name.


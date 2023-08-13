--List the employee number, last name, first name, sex, and salary of each employee.

-- Query Tables
SELECT * FROM employees;

SELECT * FROM salaries;

-- A join statement to query all salaries by employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;



--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT (first_name, last_name, hire_date)
FROM employees
WHERE hire_date >='1/1/1986'
	AND hire_date <= '12/31/1986';
	



--List the manager of each department along with their department number, department name, employee number, last name, and first name.

-- Query Tables
SELECT * FROM dept_manager;

SELECT * FROM departments;

SELECT * FROM employees;

-- A join statement to query all manager details for each department
SELECT e.last_name, e.first_name, e.emp_no, d.dept_no, d.dept_name
FROM dept_manager m
LEFT JOIN employees e
ON m.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = m.dept_no;




--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- Query Tables
SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM dept_employ;

-- A join statement to query all employees department information
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_employ p
ON e.emp_no = p.emp_no
LEFT JOIN departments d
ON p.dept_no = d.dept_no;





--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
--Query the table
SELECT * FROM employees;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	



--List each employee in the Sales department, including their employee number, last name, and first name.

-- Query Tables
SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM dept_employ;

-- A join statement to query all employees in sales department
SELECT p.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_employ p
ON d.dept_no = p.dept_no
INNER JOIN employees e
ON p.emp_no = e.emp_no
WHERE dept_name='Sales'
ORDER BY e.emp_no;




--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- Query Tables
SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM dept_employ;

-- A join statement to query all employees in sales department
SELECT p.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_employ p
ON d.dept_no = p.dept_no
INNER JOIN employees e
ON p.emp_no = e.emp_no
WHERE dept_name='Sales'
	OR dept_name='Development'
ORDER BY e.emp_no;



--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT * FROM employees;

--Query the frequency of employees with the same last name in desending order

SELECT last_name, count(emp_no) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY count(emp_no) DESC;

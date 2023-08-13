

CREATE TABLE departments(
	dept_no VARCHAR(10) NOT NULL PK FK -<dept_employ.dept_no,
	dept_name VARCHAR
);

CREATE TABLE titles(
	title_id VARCHAR NOT NULL PK FK -< employees.emp_title_id,
	title VARCHAR
);


CREATE TABLE employees(
	emp_no VARCHAR(10) NOT NULL PK ,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE dept_employ(
	emp_no VARCHAR(10) NOT NULL FK >-employees.emp_no,
	dept_no VARCHAR(10)
	(emp_no,dept_no) PK
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL FK >-departments.dept_no,
	emp_no VARCHAR
	(emp_no,dept_no) PK
);

CREATE TABLE salaries(
	emp_no VARCHAR PK FK - employees.emp_no,
	salary DECIMAL(12,2)
);




CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE department (
	dept_no VARCHAR(30) PRIMARY KEY,
	emp_no INT REFERENCES employees(emp_no),
);


CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no),
	dept_no VARCHAR(30) REFERENCES department(dept_no)
);


CREATE TABLE dept_manager (
	dept_no VARCHAR(30) REFERENCES department(dept_no),
	emp_no INT REFERENCES employees(emp_no)
);


CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no),
	salary INT
);


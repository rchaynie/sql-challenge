-- List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sa.salary
FROM employees emp
JOIN salaries sa 
ON emp.emp_no = sa.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986

SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees emp
WHERE emp.hire_date > '1985_12_31' and emp.hire_date < '1987_01_01';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT dep.dept_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM employees emp
JOIN dept_emp dept 
ON emp.emp_no = dept.emp_no
JOIN department dep
ON dept.dept_no = dep.dept_no
WHERE emp.emp_title_id = 'm0001';

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- sort of confusing prompt

SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees emp
JOIN dept_emp dept 
ON emp.emp_no = dept.emp_no
JOIN department dep
ON dept.dept_no = dep.dept_no;



-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." 

SELECT emp.first_name, emp.last_name, emp.sex
FROM employees emp
WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees emp
JOIN dept_emp dept
ON dept.emp_no = emp.emp_no
JOIN department dep
ON dept.dept_no = dep.dept_no
WHERE dep.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees emp
JOIN dept_emp dept
ON dept.emp_no = emp.emp_no
JOIN department dep
ON dept.dept_no = dep.dept_no
WHERE dep.dept_name = 'Sales' or dep.dept_name='Development';


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT emp.last_name, count(emp.last_name) as count
FROM employees emp
GROUP BY emp.last_name
ORDER BY count DESC;


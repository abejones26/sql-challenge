--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT a."emp_noID", last_name, first_name, gender, salary
FROM employees as a
INNER JOIN salaries as b 
ON a."emp_noID" = b."emp_noID";

--List employees who were hired in 1986.
SELECT * FROM employees
WHERE "hire_date" BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_emp."dept_noID", dept_name, dept_emp."emp_noID", last_name, first_name, dept_emp."from_date", dept_emp."to_date"
FROM dept_emp
INNER JOIN departments ON dept_emp."dept_noID" = departments."dept_noID"
INNER JOIN employees ON dept_emp."emp_noID" = employees."emp_noID";

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp."emp_noID", last_name, first_name, dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp."dept_noID" = departments."dept_noID"
INNER JOIN employees ON dept_emp."emp_noID" = employees."emp_noID";

--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp."emp_noID", last_name, first_name, dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp."dept_noID" = departments."dept_noID"
INNER JOIN employees ON dept_emp."emp_noID" = employees."emp_noID"
WHERE dept_name like 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp."emp_noID", last_name, first_name, dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp."dept_noID" = departments."dept_noID"
INNER JOIN employees ON dept_emp."emp_noID" = employees."emp_noID"
WHERE dept_name LIKE 'Sales'
OR dept_name LIKE 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT employees."last_name", COUNT(employees."last_name") AS "last_name_coount"
FROM employees
GROUP BY employees."last_name"
ORDER BY "last_name" DESC;




CREATE TABLE "departments" (
    "dept_noID" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_noID"
     )
);

CREATE TABLE "dept_emp" (
    "emp_noID" INTEGER   NOT NULL,
    "dept_noID" VARCHAR(30)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_noID" VARCHAR(30)   NOT NULL,
    "emp_noID" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "employees" (
    "emp_noID" INTEGER   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "gender" VARCHAR(10)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_noID"
     )
);

CREATE TABLE "salaries" (
    "emp_noID" INTEGER   NOT NULL,
    "salary" MONEY   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "titles" (
    "emp_noID" INTEGER   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_noID" FOREIGN KEY("dept_noID")
REFERENCES "departments" ("dept_noID");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_noID" FOREIGN KEY("dept_noID")
REFERENCES "departments" ("dept_noID");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_noID" FOREIGN KEY("emp_noID")
REFERENCES "employees" ("emp_noID");

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

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


SELECT COUNT(last_name)
FROM employees;





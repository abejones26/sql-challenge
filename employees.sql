DROP TABLE departments;

CREATE TABLE departments (
	dept_noID SERIAL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

DROP TABLE employees;

CREATE TABLE employees (
	emp_noID SERIAL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender BOOLEAN,
	hire_date DATE
);

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_noID INTEGER NOT NULL,
	dept_noID INTEGER NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_noID) REFERENCES employees(emp_noID),
	FOREIGN KEY (dept_noID) REFERENCES departments(dept_noID)
);

DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_noID INTEGER NOT NULL,
	emp_noID INTEGER NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_noID) REFERENCES departments(dept_noID),
	FOREIGN KEY (emp_noID) REFERENCES employees(emp_noID)
);

DROP TABLE salaries;

CREATE TABLE salaries (
	emp_noID INTEGER NOT NULL,
	salary DEC,
	to_date DATE,
	FOREIGN KEY (emp_noID) REFERENCES employees(emp_noID)
);

DROP TABLE titles;

CREATE TABLE titles (
	emp_noID INTEGER NOT NULL,
	title VARCHAR(30) NOT NULL,
	to_date DATE,
	PRIMARY KEY (title),
	FOREIGN KEY (emp_noID) REFERENCES employees(emp_noID)
);

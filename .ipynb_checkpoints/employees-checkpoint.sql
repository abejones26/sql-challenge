CREATE TABLE departments (
	dept_noID PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
	emp_noID FOREIGN KEY,
	dept_noID FOREIGN KEY,
	from_date DATE,
	to_date DATE
);

CREATE TABLE dept_manager (
	dept_noID INTEGER FOREIGN KEY,
	emp_noID INTEGER FOREIGN KEY,
	from_date DATE,
	to_date DATE
);

CREATE TABLE employees (
	emp_noID PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender BOOLEAN,
	hire_date DATE
);

CREATE TABLE salaries (
	emp_noID FOREIGN KEY,
	salary DEC,
	to_date DATE
);

CREATE TABLE titles (
	emp_noID FOREIGN KEY,
	title VARCHAR(30) NOT NULL,
	to_date DATE,
	PRIMARY KEY(title)
);

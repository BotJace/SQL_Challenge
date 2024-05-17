DROP TABLE IF EXISTS departments, dept_emp, dept_manager, employees, salaries, title;

CREATE TABLE departments (
	id INT NOT NULL PRIMARY KEY,
	dept_no VARCHAR(255),
	dept_name VARCHAR(255)
);

CREATE TABLE dept_emp (
	id INT NOT NULL PRIMARY KEY,
	emp_no INT not null,
	dept_no VARCHAR(255)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(255),
	emp_no INT not null
);

CREATE TABLE employees (
	id INT NOT NULL PRIMARY KEY,
	emp_no INT not null,
	emp_title_id VARCHAR(255),
	birth_date DATE not null,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date DATE
);

CREATE TABLE salaries (
	id INT NOT NULL PRIMARY KEY,
	emp_no INT not null,
	salary INT not null
);

CREATE TABLE title (
	id INT NOT NULL PRIMARY KEY,
	title_id VARCHAR(255),
	title VARCHAR(255)
);
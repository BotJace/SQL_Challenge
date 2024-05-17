--1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no;
--2
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 1986;
--3
SELECT dm.emp_no AS manager_emp_no, d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d ON dm.dept_no = d.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no;
--4
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON de.emp_no = e.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no;
--5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
--6
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';
--7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');
--8
SELECT last_name, COUNT(*) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;

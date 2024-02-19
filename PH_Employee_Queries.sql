SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees as e
INNER JOIN salaries as s ON
s.emp_no=e.emp_no
;

--

SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
;

--

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Employees as e
RIGHT JOIN Dept_Manager as dm ON e.emp_no=dm.emp_no
LEFT JOIN Departments as d on dm.dept_no=d.dept_no
;

--

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
LEFT JOIN Dept_Emp as de ON e.emp_no=de.emp_no
LEFT JOIN Departments as d ON de.dept_no=d.dept_no
;

--

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
;

--

SELECT emp_no, last_name, first_name
FROM Employees
WHERE emp_no IN
(
 SELECT emp_no
 FROM Dept_Emp
 WHERE dept_no IN
 (
  SELECT dept_no
  FROM Departments
  WHERE dept_name = 'Sales'
 )
);

--

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
JOIN Dept_Emp AS de ON e.emp_no=de.emp_no
JOIN Departments as d on de.dept_no=d.dept_no
	WHERE d.dept_name = 'Sales' 
	OR d.dept_name = 'Development'
;

--

SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM Employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC
;

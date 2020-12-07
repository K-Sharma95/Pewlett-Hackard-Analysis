-- RETRIEVE COLUMNS FROM EMPLOYEES & TITLES TABLE AND SAVE THEM IN NEW TABLES EMP_D1 & RET_D1
SELECT emp_no, first_name, last_name
INTO emp_d1
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT emp_no, title, from_date, to_date
INTO ret_d1
FROM titles

SELECT * FROM ret_d1
DROP TABLE emp_d1 CASCADE

-- JOIN BOTH TABLES ON PRIMARY KEY emp_no and order by emp_no, into a new table titles "retirement_titles"
SELECT em.emp_no,
	em.first_name, 
	em.last_name,
    
	re.title,
	re.from_date,
	re.to_date
	
INTO retirement_titles
		
FROM emp_d1 as em
INNER JOIN ret_d1 as re
ON em.emp_no = re.emp_no
ORDER BY em.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles


-- Create a query to retrieve the to retire, and title it retiring_titles.csv
SELECT COUNT(unique_titles.emp_no), retirement_titles.title
INTO retiring_titles
FROM unique_titles
LEFT JOIN retirement_titles
ON unique_titles.emp_no = retirement_titles.emp_no
GROUP BY retirement_titles.title 
ORDER BY retirement_titles.title 





-- Create a mentorship eligibility table that hold employees eligible for mentorship program 

DROP TABLE mentorship_eligibility CASCADE
		
SELECT  e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	
	d.from_date,
	d.to_date,
	
	ti.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS d
		ON e.emp_no = d.emp_no
			

	LEFT JOIN titles AS ti
		ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')		
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility2

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO mentorship_eligibility2
FROM mentorship_eligibility
ORDER BY emp_no, birth_date DESC;



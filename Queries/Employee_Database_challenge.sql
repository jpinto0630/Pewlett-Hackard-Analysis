--Module 7 Challenge queries
SELECT emp.emp_no,
emp.first_name,
emp.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retiring_title
FROM employees as emp
INNER JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO titles_no_dupes
FROM retiring_title
ORDER BY emp_no, to_date DESC;

--Number of employees by their most recent job title who are about to retire.
SELECT COUNT(title), title
INTO titles_retiring
FROM titles_no_dupes
GROUP BY title
ORDER BY COUNT(title) DESC; 

SELECT DISTINCT ON (emp.emp_no) emp.emp_no, 
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	dep.from_date,
	dep.to_date,
	ti.title
into mentorship
FROM employees as emp
INNER JOIN dept_emp as dep
    ON (emp.emp_no = dep.emp_no)
INNER JOIN titles as ti 
    ON (emp.emp_no = ti.emp_no) 
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
    AND (ti.to_date = '9999-01-01')
ORDER BY (emp.emp_no); 






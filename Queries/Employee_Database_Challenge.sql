--PART 1
SELECT employees.emp_no,
		employees.first_name,
		employees.last_name,
		titles.title,
		titles.from_date,
		titles.to_date
		
INTO retirement_titles

FROM employees
	JOIN titles
	ON employees.emp_no = titles.emp_no
	
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

SELECT * FROM retirement_titles


SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles

FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles

FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

SELECT * FROM retiring_titles


--PART 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title

INTO mentorship_eligibilty

FROM employees as e
	JOIN dept_emp as d
	ON e.emp_no=d.emp_no
	
	JOIN titles as t
	ON e.emp_no=t.emp_no
	
WHERE d.to_date = '9999-01-01' 
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty
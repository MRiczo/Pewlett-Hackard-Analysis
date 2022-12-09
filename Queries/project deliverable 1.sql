----Retirement Titles Table Creation
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


----Unique Titles Creation
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles

FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles

----Retiring Titles Creation
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles

FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

SELECT * FROM retiring_titles
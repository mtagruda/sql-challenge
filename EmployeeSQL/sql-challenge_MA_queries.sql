
--1. List the following details, employee number, last name, first name, gender and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
from employees e
join salaries s
on (e.emp_no = s.emp_no);

--2. List employees who were hired in 1987
select * from employees
where hire_date between '1987-01-01' and '1987-12-31';

--3. List manager of each dept with dept number, dept name, manager's emp number, last name, first name, start and end date
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, m.from_date, m.to_date 
from employees e
join dept_manager m 
on (m.emp_no = e.emp_no)
join departments d
on (d.dept_no = m.dept_no);

--4. List department of each employee with emp number, last name, first name, dept name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de 
on (e.emp_no = de.emp_no)
join departments d
on (d.dept_no = de.dept_no);

--5. List all employees with first name Duangkaew and last name starting with P.
select * from employees where first_name = 'Duangkaew' and last_name like 'P%';

--6. List all employees in Sales with their emp number, last name, first name and dept name
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees e
join dept_emp de 
on (e.emp_no = de.emp_no)
join departments d
on (d.dept_no = de.dept_no) 
where dept_name = 'Sales';

--7. List all employees in Sales and Development with their emp number, last name, first name and dept name
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees e
join dept_emp de 
on (e.emp_no = de.emp_no)
join departments d
on (d.dept_no = de.dept_no) 
where dept_name = 'Sales' or dept_name = 'Development';

--8. In ascending order, list the frequency count of employee last names.
select last_name, Count(last_name) As Frequency from employees
Group By last_name
order by count(last_name)ASC;

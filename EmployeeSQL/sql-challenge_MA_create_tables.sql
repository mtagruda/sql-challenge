--Create the departments table 
CREATE TABLE departments (
  dept_no VARCHAR(30) primary key,
  dept_name VARCHAR(30) NOT NULL
);

-- Create the employees table
CREATE TABLE employees (
	emp_no VARCHAR(30) primary key,
	birth_date date NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender char(1) NOT NULL,
	hire_date date NOT NULL
);

-- Create the dept_emp table
CREATE TABLE dept_emp (
	emp_no VARCHAR(30) NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date date NOT NULL,
	to_date date
);

-- Create the dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date date NOT NULL,
	to_date date
);

-- Create the titles table
CREATE TABLE titles (
	emp_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(50) NOT NULL,
	from_date date NOT NULL,
	to_date date
);

-- Create the salaries table
CREATE TABLE salaries (
	emp_no VARCHAR(30) NOT NULL,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date date NOT NULL,
	to_date date
);


-- Drop table if exists
DROP TABLE IF EXISTS departments;

--dept_no	dept_name
-- Create new table
CREATE TABLE departments (
  dept_no CHAR(4),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

--------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS titles;
--title_id	title
-- Create new table
CREATE TABLE titles (
	title_id CHAR(5),
    title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);


-----------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS employees;
--emp_no	emp_title_id	birth_date	first_name	last_name	sex	hire_date
-- Create new table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title CHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;
--emp_no	dept_no
-- Create new table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no CHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

dept_no	emp_no
-- Create new table
CREATE TABLE dept_manager (
	dept_no CHAR(4) NOT NULL,
	emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS salaries;
--emp_no	salary
-- Create new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
    salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-------------------------------------------





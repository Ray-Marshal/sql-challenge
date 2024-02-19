CREATE TABLE Titles (
    title_id VARCHAR(10),
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE Departments (
    dept_no VARCHAR(10),
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Employees (
    emp_no INT,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR,
    hire_date DATE,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no VARCHAR(10),
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(10),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
  	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
    emp_no INT,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);

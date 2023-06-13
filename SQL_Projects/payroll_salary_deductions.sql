

USE db_payroll;
CREATE TABLE employee (
	employee_id INT NOt NULL PRIMARY KEY IDENTITY(1,1),
	job_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	date_of_hire DATE
);

CREATE TABLE job (
	job_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	job_title VARCHAR(50) NOT NULL,
	job_dept VARCHAR(50) NOT NULL,
	salary_id INT NOT NULL
);

CREATE TABLE salary (
	salary_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	hourly_rate MONEY NOT NULL
);

CREATE TABLE payroll (
	payroll_date DATE NOT NULL,
	employee_id INT NOT NULL,
	hours_worked INT NOT NULL,
);

CREATE TABLE deductions (
	deduction_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	deduction_type VARCHAR(50) NOT NULL,
	deduction_amt FLOAT NOT NULL
);


ALTER TABLE employee
ADD FOREIGN KEY (job_id) REFERENCES job(job_id);

ALTER TABLE payroll
ADD FOREIGN KEY (employee_id) REFERENCES employee(employee_id);

ALTER TABLE job
ADD FOREIGN KEY (salary_id) REFERENCES salary(salary_id);

INSERT INTO deductions 
VALUES
('Federal Withholding', 8.0),
('Social Security', 6.2),
('Medicare', 1.45),
('State Disability Insurance', 0.9),
('State Withholding', 13.47)
;


--CREATING A PRINT STATEMENT THAT TELLS THE INDIVIDUAL EMPLOYEE's SALARY DEDUCTIONS


DECLARE @totalDed MONEY;

SET @totalDed = (SELECT SUM(deduction_amt) FROM deductions);

--END EMPLOYEE SALARY DEDUCTION


INSERT INTO salary VALUES
(19.50),
(20.00),
(20.50),
(21.00),
(21.50);

SELECT * FROM salary;

INSERT INTO job VALUES
('AR DIRECTOR', 'Accouting', 2),
('HR Director', 'Human Resources', 4),
('Developer', 'IT', 5),
('Customer Service Manager', 'Operations', 3),
('Sales Manager', 'Sales and Marketing', 1);

SELECT * FROM job;

INSERT INTO employee VALUES
(1, 'Sam', 'Smith', '2018-11-28'),
(4, 'Amanda', 'James', '2020-04-01'),
(3, 'David', 'McGrath', '2021-12-11'),
(2, 'Valerie', 'Ringer', '2014-07-31'),
(5, 'Andrea', 'Antivilo', '2019-02-04');

SELECT * FROM employee;

INSERT INTO payroll VALUES
('2023-06-07', 1, 40),
('2023-06-07', 2, 25),
('2023-06-07', 3, 38),
('2023-06-07', 3, 38),
('2023-06-07', 4, 22),
('2023-06-07', 5, 34);

SELECT * FROM employee	
	INNER JOIN payroll ON employee.employee_id = payroll.employee_id
	INNER JOIN job ON employee.job_id = job.job_id
	INNER JOIN salary ON job.salary_id = salary.salary_id;


DECLARE @totalDed FLOAT;

SET @totalDed = (SELECT SUM(deduction_amt) FROM deductions);

SELECT employee.first_name AS 'First Name:',
	employee.last_name AS 'Last Name:',
	p.hours_worked AS 'Hours:',
	s.hourly_rate AS 'Rate:',
	p.hours_worked*s.hourly_rate AS 'Total Pay:',
	@totalDed AS 'Deductions(Percent of Salary):',
	ROUND((@totalDed*p.hours_worked*s.hourly_rate*.01),2) AS 'Net Deduction:',
	ROUND((p.hours_worked*s.hourly_rate - @totalDed*p.hours_worked*s.hourly_rate*.01),2) AS 'Net Pay:'
	FROM employee
	INNER JOIN payroll p ON employee.employee_id = p.employee_id
	INNER JOIN job ON employee.job_id = job.job_id
	INNER JOIN salary s ON job.salary_id = s.salary_id;


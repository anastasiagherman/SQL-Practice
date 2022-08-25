-- Practice1 Part2

DESCRIBE departments;

SELECT *
FROM departments;

DESCRIBE employees;

SELECT employee_id, last_name, job_id, hire_date
AS startdate
FROM employees;

SELECT DISTINCT job_id
FROM employees;

-- Practice1 Part3

SELECT employee_id AS "Emp #", last_name "Employee", job_id "Job", hire_date "Hire Date"
FROM employees;

SELECT  last_name || ', ' || job_id AS "Employee and Title"
FROM employees;


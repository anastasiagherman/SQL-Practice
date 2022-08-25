-- Practice8
-- Exercise 1
SELECT department_id
FROM departments
MINUS
SELECT  department_id
FROM employees
WHERE job_id = 'ST_CLERK';

-- Exercise 2
SELECT country_id, country_name
FROM countries
MINUS
SELECT l.country_id, c.country_name
FROM locations l JOIN countries c
ON (l.country_id = c.country_id)
JOIN departments d
ON d.location_id = l.location_id;

-- Exercise 3
SELECT DISTINCT job_id, department_id
FROM employees
WHERE department_id=10
UNION ALL
SELECT DISTINCT job_id, department_id
FROM employees
WHERE department_id = 20;

-- Exercise 4
SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;

-- Exercise 5
SELECT last_name, department_id, TO_CHAR(null)
FROM employees
UNION
SELECT TO_CHAR(null), department_id, department_name
FROM departments;
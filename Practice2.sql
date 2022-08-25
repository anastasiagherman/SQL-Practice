-- Practice 2

-- Exercise 1
SELECT last_name, salary
FROM employees
WHERE salary > 12000;

-- Exercise 2
SELECT last_name, department_id
FROM mployees
WHERE employee_id = 176;

-- Exercise 3
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- Exercise 4
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date;

-- Exercise 5
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name;

-- Exercice 6
SELECT last_name "Employee", salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 500 AND 12000
AND department_id IN (20,50);

-- Exercise 7
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '%94';

-- Exercise 8
SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

-- Exercise 9
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL,
ORDER BY 2 DESC, 3 DESC;

-- Exercise 10
SELECT last_name, salary
FROM employees
WHERE salary > &amount;

-- Exercise 11
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = &manager_nr
ORDER BY &column;

-- Exercise 12
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

-- Exercise 13
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%e%';

-- Exercise 14
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK')
AND salary NOT IN (2500, 3500, 7000);

-- Exercise 15
SELECT last_name "Employee", salary "Monthly Salary", commission_pct
FROM employees
WHERE commission_pct = 0.2;
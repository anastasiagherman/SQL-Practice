SELECT last_name, salary
FROM employees
WHERE manager_id = (SELECT employee_id
                    FROM employees
                    WHERE last_name = 'King');

-- Exercise 1
UNDEFINE name
SELECT last_name, hire_date
FROM employees
WHERE department_id = (SELECT department_id
                        FROM employees
                        WHERE last_name = '&&name')
AND last_name <> '&name';

-- Exercise 2
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees)
ORDER BY salary;

-- Exercise 3
SELECT employee_id, last_name
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE last_name like '%u%');

-- Exercise 4
SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE location_id = 1700);

SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE location_id = &location);


-- Exercise 5
SELECT last_name, salary
FROM employees
WHERE manager_id IN (SELECT employee_id
                    FROM employees
                    WHERE last_name = 'King');

-- Exercise 6
SELECT department_id, last_name, job_id
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE department_name = 'Executive');

-- Exercise 7
SELECT last_name FROM employees
WHERE salary > ANY(SELECT salary
                   FROM employees
                   WHERE department_id=60);

-- Exercise 8
SELECT employee_id, last_name
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE last_name like '%u%')
AND salary > (SELECT AVG(salary)
              FROM employees);

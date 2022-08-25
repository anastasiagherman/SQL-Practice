-- Practice5

-- Exercise4
SELECT ROUND(MAX(salary), 0) "Maximum", ROUND(MIN(salary), 0) "Minimum", ROUND(SUM(salary), 0) "Sum", ROUND(AVG(salary), 0) "Average"
FROM employees;

-- Exercise5
SELECT job_id, ROUND(MAX(salary), 0) "Maximum", ROUND(MIN(salary), 0) "Minimum", ROUND(SUM(salary), 0) "Sum", ROUND(AVG(salary), 0) "Average"
FROM employees
GROUP BY job_id;

-- Exercise6
SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;

SELECT job_id, COUNT(*)
FROM employees
WHERE job_id = '&job_name'
GROUP BY job_id;

-- Exercise7
SELECT COUNT(manager_id) "Number of managers"
FROM employees;

-- Exercise8
SELECT MAX(salary) - MIN(salary) DIFFERENCE
FROM employees;

-- Exercise9
SELECT manager_id, MIN(salary)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY salary DESC;
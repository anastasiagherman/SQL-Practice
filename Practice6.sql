-- Practice6

-- Exercise1
SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries;

-- Exercise2
SELECT last_name, department_id, department_name
FROM employees
JOIN departments
USING (department_id);

-- Exercice3
SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE l.city = 'Toronto';

-- Exercise 4
SELECT e.last_name "Employee", e.employee_id "EMP#", m.last_name "Manager", m.employee_id "Mgr#"
FROM employees e JOIN employees m
ON (e.employee_id = m.employee_id);

-- Exercise 5
SELECT e.last_name "Employee", e.employee_id "EMP#", m.last_name "Manager", m.employee_id "Mgr#"
FROM employees e LEFT OUTER JOIN employees m
ON (e.employee_id = m.employee_id)
ORDER BY e.employee_id;

-- Exercise 6
SELECT e.last_name Employee, e.department_id Department, c.last_name Colleague
FROM employees e JOIN employees c
ON (e.department_id = c.department_id)
WHERE e.employee_id <> c.employee_id;

-- Exercise 7
DESCRIBE JOB_GRADES

-- Exercise 8
SELECT e.last_name, e.hire_date
FROM employees e JOIN employees d
ON (d.last_name = 'Davies')
WHERE d.hire_date < e.hire_date;

-- Exercise 9
SELECT e.last_name, e.hire_date, m.last_name, m.hire_date
FROM employees e JOIN employees m
ON (e.manager_id = m.employee_id)
WHERE e.hire_date < m.hire_date;

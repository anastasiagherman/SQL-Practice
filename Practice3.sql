-- Practice3

-- Exercise1
SELECT sysdate
FROM dual;

-- Exercise2
SELECT employee_id, last_name, salary, ROUND(salary + (salary*15.5/100)) "New Salary"
FROM employees;

-- Exercise4
SELECT employee_id, last_name, salary, ROUND(salary + (salary*15.5/100)) "New Salary", ROUND(salary + (salary*15.5/100))-salary "Increase"
FROM employees;

-- Exercise5
SELECT INITCAP(last_name) "Name", LENGTH(last_name) "Length"
FROM employees
WHERE SUBSTR(last_name, 1,1) IN ('M', 'J', 'A')
ORDER BY last_name;

SELECT INITCAP(last_name) "Name", LENGTH(last_name) "Length"
FROM employees
WHERE SUBSTR(last_name, 1,1) = &start_letter
ORDER BY last_name;

-- Exercise6
SELECT last_name, ROUND((SYSDATE-hire_date)/12) AS months_worked
FROM employees
ORDER BY  months_worked;

-- Exercise7
SELECT last_name, LPAD(salary,15, '$')
FROM employees;

-- Exercise8
SELECT SUBSTR(last_name, 1, 8)
FROM employees;

-- Exercise9
SELECT last_name, TRUNC((SYSDATE -hire_date)/7) tenure
FROM employees
WHERE department_id = 90
ORDER BY tenure;


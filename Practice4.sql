-- Practice4

-- Exercise1
SELECT last_name || ' earns ' || TO_CHAR(salary, '$99,999.00') || ' monthly but wants ' || TO_CHAR(salary*3, '$99,999.00') "Dream Salaries"
FROM employees;

-- Exercise2
SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-RR'), TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6), 'Monday'), 'fmDay, "the" Ddspth "of" Month, YYYY') review
FROM employees;

-- Exercise3
SELECT last_name, hire_date, TO_CHAR(hire_date, 'Day') Day
FROM employees
ORDER BY TO_CHAR(hire_date-1, 'd');

-- Exercise4
SELECT last_name, NVL(TO_CHAR(commission_pct), 'No commission' ) comm
FROM employees;

-- Exercise5
SELECT job_id, DECODE( job_id,
                       'AD_PRES', 'A',
                       'ST_MAN', 'B',
                       'IT_PROG', 'C',
                       'SA_REP', 'D',
                       'ST_CLERK', 'E',
                        '0') grade
FROM employees;

-- Exercise6
SELECT job_id CASE job_id
              WHEN 'AD_PRES' THEN 'A'
              WHEN 'ST_MAN' THEN 'B'
              WHEN 'IT_PROG' THEN 'C'
              WHEN 'SA_REP' THEN 'D'
              WHEN 'ST_CLERK' THEN 'E'
              ELSE '0' END GRADE
FROM employees;

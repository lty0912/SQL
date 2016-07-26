SELECT first_name, salary FROM EMPLOYEES WHERE salary > (SELECT salary FROM EMPLOYEES WHERE first_name = 'Jack');

--연습1
SELECT MIN(salary) FROM EMPLOYEES;
SELECT first_name, salary FROM EMPLOYEES WHERE salary = (SELECT MIN(salary) FROM EMPLOYEES);

SELECT AVG(salary) FROM EMPLOYEES;
SELECT first_name, salary FROM EMPLOYEES WHERE salary > (SELECT AVG(salary) FROM EMPLOYEES);

SELECT * FROM DEPARTMENTS;
SELECT first_name, department_id
FROM EMPLOYEES 
WHERE department_id = (SELECT department_id FROM DEPARTMENTS WHERE department_name = 'Purchasing');

--join
SELECT a.first_name, a.department_id
FROM EMPLOYEES a, DEPARTMENTS b
WHERE a.department_id = b.department_id
AND b.department_name = 'Purchasing';

-- subquery의 결과가 multi row, single column
SELECT first_name, salary
FROM EMPLOYEES 
WHERE salary in (SELECT MIN(salary) FROM EMPLOYEES GROUP BY department_id);

SELECT first_name, salary
FROM EMPLOYEES 
WHERE salary =any (SELECT MIN(salary) FROM EMPLOYEES GROUP BY department_id);

--multi row & multi column
SELECT first_name, salary
FROM EMPLOYEES 
WHERE (department_id, salary) in (SELECT department_id, MIN(salary) FROM EMPLOYEES GROUP BY department_id)
ORDER BY salary ;


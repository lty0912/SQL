--문제2
--1
SELECT MAX(salary) AS "최고임금", MIN(salary) AS "최저임금",  MAX(salary) - MIN(salary) AS "차이"
FROM EMPLOYEES;


--2
SELECT to_char(MAX(hire_date), 'RRRR"년" MM"월" DD"일"' ) 
FROM EMPLOYEES;

--3
SELECT AVG(salary), MAX(salary), MIN(salary), department_id
FROM EMPLOYEES
GROUP BY department_id
ORDER BY AVG(salary) DESC, MAX(salary) DESC, MIN(salary) DESC;

--4
SELECT AVG(salary), MAX(salary), MIN(salary), job_id
FROM EMPLOYEES
GROUP BY job_id
ORDER BY AVG(salary) DESC, MAX(salary) DESC, MIN(salary) DESC;

--5
SELECT to_char(MIN(hire_date), 'RRRR"년" MM"월" DD"일"')
FROM EMPLOYEES;

--6
SELECT AVG(salary) AS "평균임금", MIN(salary) AS "최저임금"
FROM employees
GROUP BY department_id
HAVING (AVG(salary) - MIN(salary)) < 2000
ORDER BY (AVG(salary) - MIN(salary)) DESC;

--7
SELECT max_salary, min_salary, max_salary - min_salary, job_id
FROM jobs
ORDER BY max_salary - min_salary DESC; 

SELECT MAX(salary),MIN(salary), MAX(salary) - MIN(salary), job_id
FROM EMPLOYEES 
GROUP BY job_id
ORDER BY MAX(salary) - MIN(salary) DESC;

SELECT * FROM JOBS WHERE job_id = 'AD_PRES';



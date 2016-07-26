--연습문제 04
--1
SELECT count(*)
FROM EMPLOYEES
WHERE salary < (SELECT AVG(salary) FROM EMPLOYEES);

--2
SELECT employee_id AS "사번", last_name AS "성", salary AS "연봉"
FROM EMPLOYEES
WHERE (department_id, salary) IN (SELECT department_id, MAX(salary) FROM EMPLOYEES GROUP BY department_id)
ORDER BY "연봉" DESC;

SELECT department_id, MAX(salary) FROM EMPLOYEES GROUP BY department_id ORDER BY department_id;

--3
SELECT a.job_title, sum_salary
  FROM JOBS a , (SELECT job_id, sum(salary) AS sum_salary FROM EMPLOYEES GROUP BY job_id) b
WHERE a.job_id = b.job_id
ORDER BY sum_salary ASC;

--4
SELECT employee_id, last_name, salary
FROM EMPLOYEES a, (SELECT department_id, AVG(salary) AS avg_salary FROM EMPLOYEES GROUP BY department_id) b
WHERE a.department_id = b.department_id
AND a.salary < avg_salary
ORDER BY EMPLOYEE_ID;

SELECT department_id, AVG(salary) FROM EMPLOYEES GROUP BY department_id ORDER BY department_id;
SELECT * FROM EMPLOYEES;





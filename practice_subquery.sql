SELECT first_name, salary
FROM EMPLOYEES
WHERE (department_id, salary) IN (SELECT department_id, MIN(salary) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

--correlated subquery
SELECT first_name, department_id, salary
FROM EMPLOYEES 
WHERE salary = (SELECT MIN(salary) FROM EMPLOYEES WHERE department_id = department_id);

SELECT first_name, department_id, salary FROM EMPLOYEES;

--FROM 절에 SELECT (SELECT 결과를 테이블로 사용한다.) ★★★★★
SELECT MIN(salary) FROM EMPLOYEES WHERE department_id = department_id;

SELECT a.first_name, a.salary 
FROM EMPLOYEES a,
  (SELECT department_id, MIN(salary) AS min_salary FROM EMPLOYEES GROUP BY department_id) b
  WHERE a.department_id = b.department_id
  AND a.salary = b.min_salary;
  
  SELECT employee_id, salary, department_id
  FROM EMPLOYEES;
  SELECT department_id, AVG(salary) AS avg_salary FROM EMPLOYEES GROUP BY department_id ORDER BY department_id;


-- inner join

-- equi join
SELECT a.FIRST_NAME, b.DEPARTMENT_NAME
FROM EMPLOYEES a, departments b
WHERE a.DEPARTMENT_ID = b.department_id;

-- theta join
SELECT *
FROM employees a, jobs b
WHERE a.salary between b.min_salary and b. max_salary;

-- self join
SELECT a.FIRST_NAME as "사원", nvl(b.first_name, '없음') as "매니저"
FROM employees a, employees b
WHERE a.MANAGER_ID = b.EMPLOYEE_ID(+);

SELECT a.first_name, b.department_name
FROM employees a, departments b
WHERE a.department_id = b.department_id(+);


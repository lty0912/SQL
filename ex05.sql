--연습문제 05
--1
SELECT a.first_name || ' ' || a.last_name AS "이름", a.salary, b.department_name
FROM EMPLOYEES a, DEPARTMENTS b
WHERE hire_date = (SELECT MAX(hire_date) FROM EMPLOYEES)
AND a.department_id = b.DEPARTMENT_ID;

--2
SELECT employee_id, last_name, salary
FROM EMPLOYEES a, (SELECT department_id, AVG(salary) AS avg_salary FROM EMPLOYEES GROUP BY department_id) b
WHERE a.department_id = b.department_id
AND a.salary < avg_salary
ORDER BY EMPLOYEE_ID;

--3
SELECT a.employee_id, a.first_name, a.last_name, b.job_title, a.salary
FROM EMPLOYEES a, JOBS b
WHERE a.department_id 
    = (SELECT a.department_id
    FROM (SELECT department_id, AVG(salary) AS avg_salary FROM EMPLOYEES GROUP BY department_id) a, (SELECT MAX(AVG(salary)) AS max_salary FROM EMPLOYEES GROUP BY department_id) b
    WHERE avg_salary =  max_salary)
AND a.job_id = b.job_id;

-- 가장 높은 연봉 부서번호 구하기
SELECT a.department_id
FROM (SELECT department_id, AVG(salary) AS avg_salary FROM EMPLOYEES GROUP BY department_id) a, (SELECT MAX(AVG(salary)) AS max_salary FROM EMPLOYEES GROUP BY department_id) b
WHERE avg_salary =  max_salary ;

              SELECT MAX(AVG(salary)) FROM EMPLOYEES GROUP BY department_id;
              SELECT department_id, avg(salary) FROM EMPLOYEES GROUP BY department_id ORDER BY avg(salary) DESC;
              
--4
SELECT department_name
FROM DEPARTMENTS
WHERE department_id = (SELECT a.department_id
FROM (SELECT department_id, AVG(salary) AS avg_salary FROM EMPLOYEES GROUP BY department_id) a, (SELECT MAX(AVG(salary)) AS max_salary FROM EMPLOYEES GROUP BY department_id) b
WHERE avg_salary =  max_salary );

--5
SELECT city
FROM (SELECT AVG(salary) as avg_salary, city
      FROM (SELECT a.salary, c.city
      FROM EMPLOYEES a, DEPARTMENTS b, LOCATIONS c
      WHERE a.department_id = b.department_id
      AND b.location_id = c.location_id)
      GROUP BY city)
WHERE avg_salary = (SELECT MAX(avg_salary) 
      FROM (SELECT AVG(salary) as avg_salary, city
             FROM (SELECT a.salary, c.city
             FROM EMPLOYEES a, DEPARTMENTS b, LOCATIONS c
              WHERE a.department_id = b.department_id
              AND b.location_id = c.location_id)
      GROUP BY city));
      
--6
SELECT job_title 
FROM ( SELECT AVG(salary) AS avg_salary, job_title 
        FROM ( SELECT a.salary, b.job_title
              FROM EMPLOYEES a, JOBS b
              WHERE a.job_id = b.job_id)
      GROUP BY job_title)
WHERE avg_salary = ( SELECT MAX(avg_salary)
                    FROM (SELECT AVG(salary) AS avg_salary, job_title 
                          FROM ( SELECT a.salary, b.job_title
                                FROM EMPLOYEES a, JOBS b
                  WHERE a.job_id = b.job_id)
                  GROUP BY job_title));
                  











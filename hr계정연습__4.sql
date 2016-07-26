--1 
SELECT a.employee_id, a.first_name AS "이름", nvl(b.department_name, '부서 없음') AS "부서", nvl(c.first_name, '매니저 없음')AS "매니저"
FROM employees a, departments b, employees c
WHERE a.department_id = b.department_id(+)
AND a.manager_id = c.employee_id(+)
ORDER BY a.employee_id;

--2
SELECT a.region_name AS "지역이름", b.country_name AS "나라이름"
FROM regions a, countries b
WHERE a.region_id = b.region_id
ORDER BY "지역이름" DESC ,"나라이름" DESC;

--3
SELECT a.department_id AS "부서번호",
  a.department_name AS "부서이름",
  nvl(b.first_name, '매니저 없음') AS "매니저",
  c.city AS "도시",
  d.country_name AS "나라이름",
  e.region_name AS "지역이름"    
FROM departments a, employees b, locations c, countries d, regions e
WHERE a.manager_id = b.employee_id(+)
  AND a.location_id = c.location_id
  AND c.country_id = d.country_id
  AND d.region_id = e.region_id
  ORDER BY "부서번호";
  
  SELECT * FROM departments;
   
--4
SELECT c.employee_id AS "사번", c.first_name || ' ' || c.last_name AS "이름"
FROM job_history a, jobs b, employees c
WHERE a.employee_id = c.employee_id
  AND a.job_id = b.job_id
  AND b.job_title = 'Public Accountant';

--5
SELECT a.employee_id AS "사번", a.first_name AS "이름", a.first_name AS "성", nvl(b.department_name, '부서없음') AS "부서"
FROM employees a, departments b
WHERE a.department_id = b.department_id(+)
ORDER BY a.last_name;

--6
SELECT a.employee_id AS "사번", a.last_name AS "성", a.hire_date AS "채용일"
FROM employees a, employees b
WHERE a.manager_id = b.employee_id 
  AND a.hire_date < b.hire_date
  ORDER BY a.employee_id;
  

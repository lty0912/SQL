--1
SELECT (first_name || ' ' || last_name) AS "이름" , salary AS "이메일", phone_number AS "전화번호"
FROM employees ORDER BY hire_date;

--2
SELECT job_title AS "업무이름" , max_salary AS "최고임금" FROM jobs ORDER BY max_salary DESC;

--3
SELECT count(*) FROM employees WHERE manager_id IS NULL;   

--4
SELECT job_title FROM jobs ORDER BY job_title DESC , max_salary DESC;

--5
SELECT count(*) FROM departments;

--6
SELECT * FROM departments ORDER BY length(department_name) DESC;

--7
SELECT count(*) FROM departments WHERE manager_id IS NULL;

--8
SELECT upper(country_name) FROM countries ORDER BY country_name ASC;

--9
SELECT count(*) FROM regions;
SELECT region_name FROM regions ORDER BY length(region_name) ASC;

--10
SELECT lower(city) AS city FROM locations ORDER BY lower(city) ASC;

--count
SELECT count(*) FROM EMPLOYEES;

SELECT count(MANAGER_ID) FROM employees;

--AVG
SELECT AVG(salary) FROM employees;

SELECT department_id, to_char(AVG(salary), '99999')
FROM employees
GROUP BY department_id ORDER BY department_id;

SELECT department_id,
        to_char(AVG(salary), '99999') AS avg_salary,
        to_char(SUM(salary), '999,999,999') AS sum_salary,
        to_char(MAX(salary), '99999') AS max_salary,
        to_char(MIN(salary), '99999') AS min_salary
FROM EMPLOYEES
GROUP BY department_id
ORDER BY avg_salary;

SELECT department_id,
        AVG(salary) 
FROM EMPLOYEES
GROUP BY department_id
HAVING AVG(salary) > 5000;

-- 사장님을 뺀 사원들의 부서별 평균 연봉이 5,000 이상인 부서와 평균연봉 출력
SELECT department_id,
        AVG(salary) 
FROM EMPLOYEES
WHERE department_id is not null
GROUP BY department_id
HAVING AVG(salary) > 5000
ORDER BY AVG(salary) DESC;





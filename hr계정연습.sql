SELECT * FROM employees;

SELECT count(*) FROM employees;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME FROM employees;

SELECT first_name, last_name FROM EMPLOYEES;

SELECT first_name AS "이름" FROM EMPLOYEES;

SELECT (first_name || ' ' || last_name) AS "NAME" FROM EMPLOYEES;

SELECT 2+3 FROM dual;

SELECT (salary * 1.5) AS "incentive" FROM EMPLOYEES;

SELECT employee_id, salary, commission_pct FROM EMPLOYEES;

SELECT employee_id, commission_pct, (salary + salary * commission_pct) from EMPLOYEES;

SELECT employee_id, 1000, sysdate FROM EMPLOYEES;

SELECT first_name, salary FROM EMPLOYEES WHERE employee_id = 200;
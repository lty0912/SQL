SELECT e.FIRST_NAME, d.DEPARTMENT_ID, d.DEPARTMENT_NAME
  FROM EMPLOYEES e, DEPARTMENTS d
  WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID -- join 조건 (table 수 -1)
        AND e.salary > 5000;              -- row 선택 조건
        
SELECT first_name, department_id FROM employees;

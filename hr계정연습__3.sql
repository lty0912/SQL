--natural join
--2개의 join조건이 의도하지 않았는데 걸림
--department_id, manager_id
SELECT a.first_name, b.department_name
FROM employees a 
natural join departments b;
 
 --join ~using
SELECT a.first_name, b.department_name
  FROM employees a 
  join departments b
  using (department_id);
  
  -- join ~ on
SELECT a.first_name, b.department_name
  FROM employees a 
  join departments b
  on a.department_id = b.department_id;
  
   
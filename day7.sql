-- Window Function
SELECT employee_id, department_id, employee_name, hire_date,
       ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY hire_date) AS row_num
FROM employees;

-- Problem: For each employee, find their manager's name. Assume there is a manager_id column that refers to another row in the same table.-- 
SELECT e1.EmployeeID, e1.employee_name, e2.supervisorName 
FROM Employee e1
LEFT OUTER JOIN Employee e2 on e1.SupervisorID = e2.EmployeeID;
  

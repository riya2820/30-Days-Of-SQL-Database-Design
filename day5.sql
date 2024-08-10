-- Chained CTEs
-- List employees who worked more than the average hours
WITH EmployeeHours AS (
  SELECT
    e.name,
    SUM(e.hours) AS totalHours
  FROM Employee e  
),
AverageHours AS (
  SELECT 
    AVG(totalHours) AS averageHours
  FROM EmployeeHours h
)
  
SELECT 
  e.name,
  h.totalHours
FROM Employee e
JOIN EmployeeHours h ON e.totalHours > h.averageHours;

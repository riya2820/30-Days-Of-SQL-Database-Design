-- Problem: Find all employees and the projects they are associated with. Include employees who are not assigned to any projects and projects that have no assigned employees.
-- Find matches in either the left (employees) or right (projects) table. Records with no matching values in the other table will also be included (as NULLs)

-- Table speicifications
-- Employee table: employee_id, name, position
-- Project table: project_id, project_name, budget
-- Assignment table: project_id, employee_id

SELECT e.name,e.employee_id, p.project_name, p.project_id
FROM employees e
FULL OUTER JOIN assignments a ON e.id = a.employee_id
FULL OUTER JOIN projects p on p.id = a.project_id
GROUP BY a.employee_id, a.employee_id;

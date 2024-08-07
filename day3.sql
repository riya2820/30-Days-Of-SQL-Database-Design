-- Cross Join: customers and orders
SELECT c.name, o.id
FROM Customers c
CROSS JOIN Orders o;

-- cross join + where clause = inner join 
-- SELECT c.name, o.id
-- FROM Customers c
-- CROSS JOIN Orders o
-- WHERE c.id = o.id;

-- Problem: Create a CTE that calculates the total sales for each product category and use it to find the categories with total sales greater than a certain threshold.

WITH CategorySales AS (
SELECT
    p.product_id,
    c.category_name,
    SUM(s.sales) AS total_sales
FROM product p 
LEFT JOIN category c ON c.category_id = p.category_id AND
LEFT JOIN sales s ON p.product_id = s.product_id
GROUP BY
category_id,
product_id
);

SELECT 
    Region,
    SUM(`Total Revenue`) AS region_revenue
FROM `online sales data`
GROUP BY Region
ORDER BY region_revenue DESC;

SELECT 
    `Product Category`,
    SUM(`Units Sold`) AS total_units_sold
FROM `online sales data`
GROUP BY `Product Category`
ORDER BY total_units_sold DESC;

SELECT 
    `Product Name`,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY `Product Name`
ORDER BY total_revenue DESC
LIMIT 5;

USE task6;

SELECT 
    EXTRACT(MONTH FROM Date) AS month,
    SUM(`Total Revenue`) AS monthly_revenue
FROM `online sales data`
GROUP BY month
ORDER BY month;

SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(`Total Revenue`) AS monthly_revenue
FROM `online sales data`
GROUP BY year, month
ORDER BY year, month;

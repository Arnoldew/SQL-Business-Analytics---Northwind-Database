-- =============================================
-- 05. EMPLOYEE PERFORMANCE ANALYSIS
-- =============================================

-- Revenue per employee (sales representative)
SELECT 
    e.first_name || ' ' || e.last_name AS employee_name,
    e.title,
    COUNT(DISTINCT o.order_id) AS total_orders_handled,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS total_revenue_generated
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY employee_name, e.title
ORDER BY total_revenue_generated DESC;

-- Rata-rata waktu pengiriman per employee
SELECT 
    e.first_name || ' ' || e.last_name AS employee_name,
    ROUND(AVG(o.shipped_date - o.order_date), 1) AS avg_shipping_days
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
WHERE o.shipped_date IS NOT NULL
GROUP BY employee_name
ORDER BY avg_shipping_days ASC;
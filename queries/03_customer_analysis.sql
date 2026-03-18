-- =============================================
-- 03. CUSTOMER ANALYSIS
-- =============================================

-- Top 10 customer berdasarkan total belanja
SELECT 
    c.company_name,
    c.country,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.company_name, c.country
ORDER BY total_spent DESC
LIMIT 10;

-- Distribusi customer per negara
SELECT 
    c.country,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.country
ORDER BY total_revenue DESC;

-- Average order value per customer
SELECT 
    c.company_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(AVG(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.company_name
ORDER BY avg_order_value DESC
LIMIT 10;
-- =============================================
-- 02. SALES PERFORMANCE ANALYSIS
-- =============================================

-- Total revenue keseluruhan
SELECT 
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS total_revenue
FROM order_details od;

-- Revenue per tahun
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY year
ORDER BY year;

-- Revenue per bulan (top performing months)
SELECT 
    TO_CHAR(o.order_date, 'YYYY-MM') AS month,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY month
ORDER BY revenue DESC
LIMIT 10;

-- Top 10 produk terlaris berdasarkan revenue
SELECT 
    p.product_name,
    SUM(od.quantity) AS total_qty_sold,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 10;
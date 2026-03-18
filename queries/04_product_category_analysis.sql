-- =============================================
-- 04. PRODUCT & CATEGORY ANALYSIS
-- =============================================

-- Revenue per kategori produk
SELECT 
    cat.category_name,
    COUNT(DISTINCT p.product_id) AS total_products,
    SUM(od.quantity) AS total_qty_sold,
    ROUND(SUM(od.unit_price * od.quantity * (1 - od.discount))::numeric, 2) AS total_revenue
FROM categories cat
JOIN products p ON cat.category_id = p.category_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY cat.category_name
ORDER BY total_revenue DESC;

-- Produk dengan stok rendah (perlu restock)
SELECT 
    product_name,
    units_in_stock,
    units_on_order,
    reorder_level,
    discontinued
FROM products
WHERE units_in_stock < reorder_level
ORDER BY units_in_stock ASC;

-- Produk yang tidak pernah dipesan
SELECT 
    p.product_name,
    p.units_in_stock
FROM products p
LEFT JOIN order_details od ON p.product_id = od.product_id
WHERE od.product_id IS NULL;
-- =============================================
-- 01. BASIC DATA EXPLORATION
-- Northwind Business Analytics
-- =============================================

-- Cek jumlah baris tiap tabel utama
SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(*) AS total_products FROM products;

-- Preview data customers
SELECT * FROM customers LIMIT 10;

-- Preview data orders
SELECT * FROM orders LIMIT 10;

-- Cek range tanggal order
SELECT 
    MIN(order_date) AS earliest_order,
    MAX(order_date) AS latest_order
FROM orders;
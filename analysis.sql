-- E-Commerce Customer Intelligence: starter SQL analysis
-- Load ecommerce_orders.csv into a table named ecommerce_orders.

-- 1. Monthly revenue
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_orders
WHERE order_status = 'Delivered'
GROUP BY month
ORDER BY month;

-- 2. Revenue by category
SELECT category, ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_orders
WHERE order_status = 'Delivered'
GROUP BY category
ORDER BY revenue DESC;

-- 3. Top 10 products
SELECT product, ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_orders
WHERE order_status = 'Delivered'
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;

-- 4. Repeat customers
SELECT customer_id, COUNT(DISTINCT order_id) AS orders,
       ROUND(SUM(revenue),2) AS customer_revenue
FROM ecommerce_orders
WHERE order_status = 'Delivered'
GROUP BY customer_id
HAVING orders > 1
ORDER BY customer_revenue DESC;

-- 5. City performance
SELECT city, COUNT(*) AS orders,
       ROUND(SUM(revenue),2) AS revenue,
       ROUND(AVG(revenue),2) AS avg_order_value
FROM ecommerce_orders
WHERE order_status = 'Delivered'
GROUP BY city
ORDER BY revenue DESC;

-- 6. Cancellation rate
SELECT ROUND(100.0 * SUM(order_status='Cancelled') / COUNT(*),2) AS cancellation_rate
FROM ecommerce_orders;

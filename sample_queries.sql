-- Total revenue collected
SELECT SUM(amount) AS TotalRevenue FROM payments;

-- Top 3 customers by total spend
SELECT cname, SUM(amount) AS total_spent
FROM customers c
JOIN payments p ON c.customer_id = p.customer_id
GROUP BY cname
ORDER BY total_spent DESC
LIMIT 3;

-- Products never ordered
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

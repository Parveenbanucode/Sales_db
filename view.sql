
//1.view for total revenue by paymentMethod
CREATE VIEW TotalRevenueByPaymentMethod AS
SELECT payment_method, SUM(amount) AS total_collected
FROM payments
GROUP BY payment_method;

//2.view for customer ordersummary
CREATE VIEW CustomerOrderSummary AS
SELECT 
  c.customer_id, c.cname AS customer_name,
  COUNT(o.order_id) AS total_orders,
  SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.cname;


//3.view for employee order count
CREATE VIEW EmployeeOrderCount AS
SELECT 
  e.employee_id, e.ename AS employee_name,
  COUNT(o.order_id) AS total_orders_handled
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, e.ename;


//4.view for category sales report
CREATE VIEW CategorySalesReport AS
SELECT 
  c.category_id, c.category_name,
  SUM(oi.quantity) AS total_quantity_sold,
  SUM(oi.quantity * p.price) AS total_revenue
FROM categories c
JOIN products p ON c.category_id = p.category_id
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name;

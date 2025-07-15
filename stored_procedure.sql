//1. get total payments handled by employees
  
CREATE PROCEDURE GetEmployeeSales(IN empid INT)
BEGIN
    SELECT e.ename AS employeename, SUM(p.amount) AS totalsales
    FROM employees e 
    JOIN orders o ON e.employee_id = o.employee_id 
    JOIN payments p ON o.order_id = p.order_id 
    WHERE e.employee_id = empid
    GROUP BY e.ename;
END

//2. insert a row in products table 
CREATE PROCEDURE insertproduct(IN p_id INT, IN pname VARCHAR(20), IN pprice DECIMAL(10,2), IN cat_id INT)
BEGIN
    INSERT INTO products(product_id, product_name, price, category_id)
    VALUES(p_id, pname, pprice, cat_id);
END 

//3. get category-wise sales report
CREATE PROCEDURE GetcategorySales()
BEGIN
    SELECT c.category_name, SUM(p.price * oi.quantity) AS totalsales
    FROM categories c
    JOIN products p ON c.category_id = p.category_id
    JOIN order_items oi ON p.product_id = oi.product_id
    GROUP BY c.category_name;
END 

//4.get total payment received by date 
CREATE PROCEDURE GetTotalPaymentByDate(IN input_date DATE)
BEGIN
    SELECT input_date AS PaymentDate, COUNT(*) AS NumberOfPayments, SUM(amount) AS TotalAmountCollected
    FROM payments
    WHERE payment_date = input_date;
END 

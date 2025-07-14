create database sqlproject;
use sqlproject;
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  cname VARCHAR(30),
  email VARCHAR(50),
  city VARCHAR(20)
);

INSERT INTO customers VALUES
(1, 'Alice', 'alice@gmail.com', 'Chennai'),
(2, 'Bob', 'bob@gmail.com', 'Mumbai'),
(3, 'Charlie', 'charlie@gmail.com', 'Delhi'),
(4, 'David', 'david@gmail.com', 'Chennai'),
(5, 'Eva', 'eva@gmail.com', 'Kolkata'),
(6, 'Farhan', 'farhan@gmail.com', 'Hyderabad'),
(7, 'Grace', 'grace@gmail.com', 'Pune'),
(8, 'Helen', 'helen@gmail.com', 'Chennai'),
(9, 'Irfan', 'irfan@gmail.com', 'Delhi'),
(10, 'John', 'john@gmail.com', 'Bangalore'),
(11, 'Kiran', 'kiran@gmail.com', 'Mumbai'),
(12, 'Latha', 'latha@gmail.com', 'Coimbatore'),
(13, 'Mani', 'mani@gmail.com', 'Madurai'),
(14, 'Neha', 'neha@gmail.com', 'Chennai'),
(15, 'Omkar', 'omkar@gmail.com', 'Nagpur'),
(16, 'Priya', 'priya@gmail.com', 'Pune'),
(17, 'Qadir', 'qadir@gmail.com', 'Delhi'),
(18, 'Rita', 'rita@gmail.com', 'Surat'),
(19, 'Sanjay', 'sanjay@gmail.com', 'Bangalore'),
(20, 'Tina', 'tina@gmail.com', 'Kolkata'),
(21, 'Usha', 'usha@gmail.com', 'Delhi'),
(22, 'Vikram', 'vikram@gmail.com', 'Mumbai'),
(23, 'Waseem', 'waseem@gmail.com', 'Chennai'),
(24, 'Xavier', 'xavier@gmail.com', 'Goa'),
(25, 'Yamini', 'yamini@gmail.com', 'Pune');

select*from customers;

CREATE TABLE categories (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);

INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Fashion'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Toys'),
(6, 'Beauty'),
(7, 'Sports'),
(8, 'Stationery'),
(9, 'Grocery'),
(10, 'Fitness'),
(11, 'Footwear'),
(12, 'Watches'),
(13, 'Jewelry'),
(14, 'Furniture'),
(15, 'Kitchen'),
(16, 'Music'),
(17, 'Gaming'),
(18, 'Cameras'),
(19, 'Automotive'),
(20, 'Healthcare'),
(21, 'Gardening'),
(22, 'Pets'),
(23, 'Office Supplies'),
(24, 'Software'),
(25, 'Luggage');
 
 select*from categories;
 
 CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  price DECIMAL(10,2),
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


INSERT INTO products VALUES
(101, 'Dell Laptop', 55000.00, 1),
(102, 'Wireless Mouse', 599.00, 1),
(103, 'Men\'s T-shirt', 499.00, 2),
(104, 'Electric Kettle', 1299.00, 4),
(105, 'Notebook', 59.00, 8),
(106, 'Rice 5kg Bag', 399.00, 9),
(107, 'Dumbbells 5kg', 899.00, 10),
(108, 'Women\'s Watch', 1599.00, 12),
(109, 'Gold Earrings', 8999.00, 13),
(110, 'Office Chair', 3299.00, 14),
(111, 'Mixer Grinder', 2899.00, 15),
(112, 'Guitar', 4999.00, 16),
(113, 'Gaming Mouse', 1999.00, 17),
(114, 'Canon DSLR Camera', 38999.00, 18),
(115, 'Car Vacuum Cleaner', 1499.00, 19),
(116, 'First Aid Kit', 499.00, 20),
(117, 'Gardening Tools Set', 999.00, 21),
(118, 'Dog Food 10kg', 1999.00, 22),
(119, 'Printer Paper Pack', 399.00, 23),
(120, 'Antivirus Software', 799.00, 24),
(121, 'Luggage Trolley Bag', 1899.00, 25),
(122, 'Bluetooth Headphones', 2599.00, 1),
(123, 'Casual Shoes', 1299.00, 11),
(124, 'Lipstick Pack', 599.00, 6),
(125, 'Tennis Racket', 2199.00, 7);

select*from products;

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  ename VARCHAR(100),
  position VARCHAR(50),
  email VARCHAR(100)
);

INSERT INTO employees VALUES
(1, 'Arun', 'Manager', 'arun@store.com'),
(2, 'Bhavna', 'Sales Rep', 'bhavna@store.com'),
(3, 'Chetan', 'Support', 'chetan@store.com'),
(4, 'Divya', 'Delivery', 'divya@store.com'),
(5, 'Eshan', 'Sales Rep', 'eshan@store.com'),
(6, 'Fatima', 'Support', 'fatima@store.com'),
(7, 'Gopal', 'Sales Rep', 'gopal@store.com'),
(8, 'Heena', 'Manager', 'heena@store.com'),
(9, 'Iqbal', 'Delivery', 'iqbal@store.com'),
(10, 'Jaya', 'Sales Rep', 'jaya@store.com'),
(11, 'Kunal', 'Support', 'kunal@store.com'),
(12, 'Lavanya', 'Delivery', 'lavanya@store.com'),
(13, 'Mahesh', 'Support', 'mahesh@store.com'),
(14, 'Nisha', 'Manager', 'nisha@store.com'),
(15, 'Om', 'Sales Rep', 'om@store.com'),
(16, 'Pooja', 'Support', 'pooja@store.com'),
(17, 'Qasim', 'Delivery', 'qasim@store.com'),
(18, 'Rani', 'Sales Rep', 'rani@store.com'),
(19, 'Surya', 'Support', 'surya@store.com'),
(20, 'Trisha', 'Delivery', 'trisha@store.com'),
(21, 'Umesh', 'Sales Rep', 'umesh@store.com'),
(22, 'Varun', 'Support', 'varun@store.com'),
(23, 'Wasim', 'Delivery', 'wasim@store.com'),
(24, 'Xena', 'Manager', 'xena@store.com'),
(25, 'Yogesh', 'Sales Rep', 'yogesh@store.com');

select*from employees;

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  employee_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO orders VALUES
(201, 1, 2, '2025-07-01'),
(202, 3, 4, '2025-07-02'),
(203, 5, 6, '2025-07-02'),
(204, 7, 8, '2025-07-03'),
(205, 2, 10, '2025-07-03'),
(206, 6, 11, '2025-07-04'),
(207, 4, 12, '2025-07-04'),
(208, 8, 13, '2025-07-05'),
(209, 9, 14, '2025-07-05'),
(210, 11, 15, '2025-07-06'),
(211, 12, 16, '2025-07-06'),
(212, 10, 17, '2025-07-06'),
(213, 13, 18, '2025-07-07'),
(214, 14, 19, '2025-07-07'),
(215, 15, 20, '2025-07-08'),
(216, 16, 21, '2025-07-08'),
(217, 17, 22, '2025-07-08'),
(218, 18, 23, '2025-07-09'),
(219, 19, 24, '2025-07-09'),
(220, 20, 25, '2025-07-10'),
(221, 21, 1, '2025-07-10'),
(222, 22, 2, '2025-07-10'),
(223, 23, 3, '2025-07-11'),
(224, 24, 4, '2025-07-11'),
(225, 25, 5, '2025-07-11');

select*from orders;

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1, 201, 101, 1),
(2, 201, 102, 2),
(3, 202, 103, 1),
(4, 203, 104, 1),
(5, 204, 105, 5),
(6, 205, 106, 2),
(7, 206, 107, 1),
(8, 207, 108, 1),
(9, 208, 109, 1),
(10, 209, 110, 1),
(11, 210, 111, 1),
(12, 211, 112, 1),
(13, 212, 113, 1),
(14, 213, 114, 1),
(15, 214, 115, 2),
(16, 215, 116, 1),
(17, 216, 117, 1),
(18, 217, 118, 1),
(19, 218, 119, 2),
(20, 219, 120, 1),
(21, 220, 121, 1),
(22, 221, 122, 1),
(23, 222, 123, 1),
(24, 223, 124, 2),
(25, 224, 125, 1);

select*from order_items;

CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  order_id INT,
  customer_id INT,
  amount DECIMAL(10,2),
  payment_date DATE,
  payment_method VARCHAR(20),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO payments VALUES
(1, 201, 1, 56198.00, '2025-07-01', 'Card'),
(2, 202, 3, 499.00, '2025-07-02', 'Cash'),
(3, 203, 5, 1299.00, '2025-07-02', 'UPI'),
(4, 204, 7, 295.00, '2025-07-03', 'Card'),
(5, 205, 2, 798.00, '2025-07-03', 'Cash'),
(6, 206, 6, 899.00, '2025-07-04', 'Card'),
(7, 207, 4, 1599.00, '2025-07-04', 'UPI'),
(8, 208, 8, 8999.00, '2025-07-05', 'Cash'),
(9, 209, 9, 3299.00, '2025-07-05', 'Card'),
(10, 210, 11, 2899.00, '2025-07-06', 'UPI'),
(11, 211, 12, 4999.00, '2025-07-06', 'Card'),
(12, 212, 10, 1999.00, '2025-07-06', 'Card'),
(13, 213, 13, 38999.00, '2025-07-07', 'Card'),
(14, 214, 14, 2998.00, '2025-07-07', 'UPI'),
(15, 215, 15, 499.00, '2025-07-08', 'Cash'),
(16, 216, 16, 999.00, '2025-07-08', 'UPI'),
(17, 217, 17, 1999.00, '2025-07-08', 'Card'),
(18, 218, 18, 798.00, '2025-07-09', 'UPI'),
(19, 219, 19, 799.00, '2025-07-09', 'Card'),
(20, 220, 20, 1899.00, '2025-07-10', 'Cash'),
(21, 221, 21, 2599.00, '2025-07-10', 'UPI'),
(22, 222, 22, 1299.00, '2025-07-10', 'Card'),
(23, 223, 23, 1198.00, '2025-07-11', 'UPI'),
(24, 224, 24, 599.00, '2025-07-11', 'Cash'),
(25, 225, 25, 2199.00, '2025-07-11', 'Card');

select*from payments;
  
// 1. get total payments handled by employee
DELIMITER $$ 
CREATE PROCEDURE GetEmployeeSales(in empid int)
BEGIN
    select e.ename as employeename,sum(p.amount) as totalsales from employees e join 
    orders o on e.employee_id=o.employee_id join payments p on o.order_id=p.order_id 
    where e.employee_id=empid
    group by e.ename;
END $$
DELIMITER ;

call GetEmployeeSales(16);

// 2. insert a row in products table
DELIMITER $$
CREATE PROCEDURE insertproduct(in p_id int,
            in pname varchar(20),
            in pprice decimal(10,2),
            in cat_id int)
begin
    insert into products(product_id,product_name,price,category_id) values(p_id,pname,pprice,cat_id);
end $$
DELIMITER ;

call insertproduct(126,'beauty things',10000,6);

//3. get category-wise sales report
DELIMITER $$ 
CREATE PROCEDURE GetcategorySales()
BEGIN
    select C.category_name, sum(p.price*OI.quantity) as totalsales from categories c 
    join products p on C.category_id=p.category_id
    join order_items OI on p.product_id=OI.product_id group by C.category_name;
END $$
DELIMITER ;

call GetcategorySales();


// 4. get total payment received by date 
DELIMITER //
CREATE PROCEDURE GetTotalPaymentByDate(IN input_date DATE)
BEGIN
  SELECT 
    input_date AS PaymentDate,
    COUNT(*) AS NumberOfPayments,
    SUM(amount) AS TotalAmountCollected
  FROM payments
  WHERE payment_date = input_date;
END //
DELIMITER ;


call GetTotalPaymentByDate('2025-07-04');


// 1. view for Total Revenue By  PaymentMethod

CREATE VIEW TotalRevenueByPaymentMethod AS
SELECT 
  payment_method,
  SUM(amount) AS total_collected
FROM payments
GROUP BY payment_method;

select*from TotalRevenueByPaymentMethod;

// 2. view  for Customer Order  Summary


CREATE VIEW CustomerOrderSummary AS
SELECT 
  C.customer_id,
  C.cname AS customer_name,
  COUNT(O.order_id) AS total_orders,
  SUM(P.amount) AS total_spent
FROM customers C
JOIN orders O ON C.customer_id = O.customer_id
JOIN payments P ON O.order_id = P.order_id
GROUP BY C.customer_id, C.cname;

select*from CustomerOrderSummary;

//3. view for Employee  Order  Count

CREATE VIEW EmployeeOrderCount AS
SELECT 
  E.employee_id,
  E.ename AS employee_name,
  COUNT(O.order_id) AS total_orders_handled
FROM employees E
JOIN orders O ON E.employee_id = O.employee_id
GROUP BY E.employee_id, E.ename;

select*from EmployeeOrderCount;

//4. view  for Category Sales  Report 

CREATE VIEW CategorySalesReport AS
SELECT 
  C.category_id,
  C.category_name,
  SUM(OI.quantity) AS total_quantity_sold,
  SUM(OI.quantity * P.price) AS total_revenue
FROM categories C
JOIN products P ON C.category_id = P.category_id
JOIN order_items OI ON P.product_id = OI.product_id
GROUP BY C.category_id, C.category_name;

select*from CategorySalesReport;

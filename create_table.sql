
create database sqlproject;
use sqlproject;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  cname VARCHAR(30),
  email VARCHAR(50),
  city VARCHAR(20)
);


CREATE TABLE categories (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);



 CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  price DECIMAL(10,2),
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  ename VARCHAR(100),
  position VARCHAR(50),
  email VARCHAR(100)
);



CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  employee_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);


CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

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



 








# 🛒 Sales_db - MySQL Project

This project is a sample SQL-based database for managing a *retail sales system*, built using MySQL. It covers customer information, product details, orders, payments, and employee management, along with stored procedures and views for analysis.

---

## 📁 Database Overview

The database includes 7 main tables:

| Table Name     | Description                            |
|----------------|----------------------------------------|
| customers    | Customer details                       |
| categories   | Product categories                     |
| products     | Products with prices and categories    |
| employees    | Store employees                        |
| orders       | Customer orders handled by employees   |
| order_items  | Items in each order                    |
| payments     | Payment details for each order         |

---

## ⚙ Features Implemented

### ✅ Stored Procedures

| Procedure Name            | Purpose                                  |
|---------------------------|------------------------------------------|
| GetEmployeeSales(empid)| Total payment handled by an employee     |
| InsertProduct(...)     | Add a new product                        |
| GetCategorySales()     | Category-wise sales report               |
| GetTotalPaymentByDate(d)| Total payment collected on a date       |

### ✅ Views

| View Name                   | Description                             |
|----------------------------|-----------------------------------------|
| TotalRevenueByPaymentMethod | Revenue grouped by payment type      |
| CustomerOrderSummary     | Order count and total spent per customer |
| EmployeeOrderCount       | Total orders handled per employee       |
| CategorySalesReport      | Sales quantity and revenue per category |

---

## 🧪 Sample Queries

- Top 5 cities with highest orders
- Products with highest sales
- Customers who spent above ₹10,000
- Daily sales trend analysis

---

## 💾 How to Use

1. Import the SQL files into your MySQL server in this order:
   - create_tables.sql
   - insert_data.sql
   - stored_procedures.sql
   - views.sql

2. Use any MySQL client like:
   - *XAMPP/phpMyAdmin*
   - *MySQL Workbench*
   - *DBeaver*

---

## 📊 Skills Applied

- Relational DB Design  
- SQL Joins, Grouping, Aggregates  
- Views & Stored Procedures  
- Data Analysis with SQL

---

## 🔗 Author

*Parveen Banu*  
Final Year BCA Student  
Interested in Data Analytics | SQL | Python | Power BI

---

⭐ Give this project a star if you find it helpful!

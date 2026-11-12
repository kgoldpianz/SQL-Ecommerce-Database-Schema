# SQL-Ecommerce-Database-Schema
SQL Server relational database management project featuring tables for customers, products, orders, and order details with complete sample inserts.

## Project Overview
This project sets up a robust relational schema for an online retail business. It models the core entities required for transactional operations—tracking customers, inventory products, customer orders, and line-item order details.

## Database Schema Structure
* **`CUSTOMERS`:** Stores client contact information, location, and registration timestamps. Includes table alteration scripts to correct and rename column headers.
* **`PRODUCTS`:** Manages product catalogs, pricing, categories, and live stock quantities.
* **`ORDERS`:** Records transaction headers linked to specific customers with automated order dates and total calculations.
* **`OrderDetails`:** Bridges orders and products to capture granular quantities, unit prices, and line-item totals.

## Key SQL Operations Included
* **Table Creation & Constraints:** Implemented `PRIMARY KEY`, `IDENTITY(1,1)` auto-incrementors, and `FOREIGN KEY` referential integrity constraints.
* **Schema Maintenance:** Utilized `SP_RENAME` to fix column naming conventions (`Addresss` to `Address`).
* **Data Population:** Inserted realistic relational sample records across all tables to verify foreign key mappings and data types.

## Tools & Skills Used
* **SQL Server (T-SQL):** DDL statements (`CREATE TABLE`, `ALTER TABLE`, `SP_RENAME`), DML statements (`INSERT INTO`, `SELECT`), and relational constraint management.
* **Database Design:** Entity-relationship modeling, normalization, and referential integrity enforcement.

* ## Conclusion
This project successfully establishes a clean, normalized relational database architecture suitable for e-commerce transactional tracking. By enforcing strict primary-foreign key relationships and data constraints, it ensures data integrity across customers, products, and order histories, providing a reliable foundation for downstream reporting and analytics.

-- 
-- Northwind Database
--
-- Description: 
-- Using the ERD provided Northwind.png
-- Create the SQL DDL to create the tables and relationships
-- Using the following description:

--
-- Create the database
--
DROP DATABASE IF EXISTS northwind;
CREATE DATABASE northwind;
USE northwind;


START TRANSACTION;

--
-- Create the tables
--

-- Task 1.0 - Create table Categories
-- Schema:
-- CategoryID (PK) - integer
-- CategoryName - varchar - length 25 - Required
-- Description - varchar - length 255

CREATE TABLE Categories (
  CategoryID INTEGER PRIMARY KEY AUTO_INCREMENT,
  CategoryName VARCHAR(25),
  Description VARCHAR(255)
);

-- Task 1.1 - Create table Customers
-- Schema:
-- CustomerID (PK) - string
-- CompanyName - varchar - length 50 - Required
-- ContactName - varchar - length 50
-- Address - varchar - length 50
-- City - varchar - length 50
-- PostalCode - varchar - length 10
-- Country - varchar - length 15



-- Task 1.2 - Create table Employees
--
-- Schema:
-- EmployeeID (PK) - integer
-- FirstName - varchar - length 15 - Required
-- LastName - varchar - length 15 - Required
-- BirthDate - datetime
-- Photo - varchar - length 25
-- Notes - varchar - length 1024



-- Task 1.3 - Create table Shippers
--
-- Schema:
-- ShipperID (PK) - integer
-- ShipperName - varchar - length 25 - Required
-- Phone - varchar - length 15



-- Task 1.4 - Create table Suppliers
--
-- Schema:
-- SupplierID (PK) - integer
-- SupplierName - varchar - length 50 - Required
-- ContactName - varchar - length 50
-- Address - varchar - length 50
-- City - varchar - length 20
-- PostalCode - varchar - length 10
-- Country - varchar - length 15
-- Phone - varchar - length 15



-- Task 1.5 - Create table Products
--
-- Schema:
-- ProductID (PK) - integer
-- ProductName - varchar - length 50 - Required
-- SupplierID (FK) - integer
-- CategoryID (FK) - integer
-- Unit - varchar - length 25
-- Price - numeric



-- Task 1.6 - Create table Orders
--
-- Schema:
-- OrderID (PK) - integer
-- CustomerID (FK) - string
-- EmployeeID (FK) - integer
-- OrderDate - datetime
-- ShipperID (FK) - integer



-- Task 1.7 - Create table OrderDetails
--
-- Schema:
-- OrderDetailID (PK) - integer
-- OrderID (FK) - integer
-- ProductID (FK) - integer
-- Quantity - integer



--
-- Define the relationships
--

-- Task 2.0 - Define the relationship between Products and Categories
--
-- Products.CategoryID -> Categories.CategoryID

ALTER TABLE Products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);

-- Task 2.1 - Define the relationship between Products and Suppliers
--
-- Products.SupplierID -> Suppliers.SupplierID



-- Task 2.2 - Define the relationship between Orders and Employees
--
-- Orders.EmployeeID -> Employees.EmployeeID



-- Task 2.3 - Define the relationship between Orders and Customers
--
-- Orders.CustomerID -> Customers.CustomerID



-- Task 2.4 - Define the relationship between Orders and Shippers
--
-- Orders.ShipperID -> Shippers.ShipperID



-- Task 2.5 - Define the relationship between OrderDetails and Orders
--
-- OrderDetails.OrderID -> Orders.OrderID



-- Task 2.6 - Define the relationship between OrderDetails and Products
--
-- OrderDetails.ProductID -> Products.ProductID


COMMIT;

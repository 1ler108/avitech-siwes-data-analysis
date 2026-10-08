drop database if exists Salesdatab;
create database Salesdatab;
use Salesdatab;
-- the tables and their insertions

create table if not exists CustomerOrders(
OrderID int primary key not null,
customerID varchar(20) not null,
Product varchar(20) not null,
OrderValue decimal(10,2) not null);

insert into CustomerOrders (OrderID, CustomerID, Product, OrderValue) values
(201, 'C001', 'Laptop', 500000),
(202, 'C002', 'Phone', 300000),
(203, 'C001', 'Mouse', 50000),
(204, 'C003', 'Monitor', 250000),
(205, 'C002', 'Headset', 80000),
(206, 'C001', 'Keyboard', 75000),
(207, 'C004', 'Phone', 320000),
(208, 'C001', 'Charger', 40000);

create table if not exists OrderDetails (
OrderID int primary key,
Category varchar(50) not null,
Product varchar(50) not null,
Amount decimal(10, 2) not null);
    
insert into OrderDetails (OrderID, Category, Product, Amount) values
(1, 'Electronics', 'Laptop', 900),
(2, 'Electronics', 'Phone', 600),
(3, 'Furniture', 'Chair', 300),
(4, 'Electronics', 'Laptop', 700),
(5, 'Furniture', 'Desk', 500),
(6, 'Electronics', 'Phone', 1000),
(7, 'Furniture', 'Chair', 200),
(8, 'Furniture', 'Desk', 0);

create table if not exists Transactions (
TransactionID int primary key,
CustomerID varchar(20) not null,
TransactionType varchar(30) not null,
Amount decimal(10, 2) not null);
    
insert into Transactions (TransactionID, CustomerID, TransactionType, Amount) values
(1, 'C101', 'Transfer', 75000),
(2, 'C102', 'Payment', 30000),
(3, 'C101', 'Transfer', 85000),
(4, 'C103', 'Withdrawal', 60000),
(5, 'C102', 'Transfer', 45000),
(6, 'C101', 'Payment', 65000),
(7, 'C103', 'Transfer', 40000),
(8, 'C102', 'Payment', 70000);

create table if not exists Production (
ProductionID int primary key,
Factory varchar(20) not null,
Product varchar(50) not null,
UnitsProduced int not null);
    
insert into Production (ProductionID, Factory, Product, UnitsProduced) values
(1, 'F001', 'Bottles', 5000),
(2, 'F001', 'Cans', 7000),
(3, 'F002', 'Bottles', 8000),
(4, 'F002', 'Cans', 6000),
(5, 'F001', 'Bottles', 3000),
(6, 'F001', 'Cans', 5000),
(7, 'F002', 'Bottles', 2000),
(8, 'F002', 'Cans', 4000);

create table if not exists Sales (
Sale_ID int primary key,
Customer varchar(50) not null,
Product varchar(50) not null,
Amount decimal(10, 2) not null);
    
insert into Sales (Sale_ID, Customer, Product, Amount) values
(101, 'Sarah', 'Sneakers', 45000),
(102, 'John', 'Sandals', 28000),
(103, 'Sarah', 'Heels', 55000),
(104, 'David', 'Laptop', 120000),
(105, 'John', 'Phone', 80000),
(106, 'Sarah', 'Bag', 30000);

create table if not exists Orders (
OrderID int primary key,
CustomerID varchar(20) not null,
City varchar(50) not null,
OrderValue decimal(10, 2) not null);

insert into Orders (OrderID, CustomerID, City, OrderValue) values
(101, 'C001', 'Lagos', 8500),
(102, 'C002', 'Abuja', 12000),
(103, 'C001', 'Lagos', 6500),
(104, 'C003', 'Ibadan', 9000),
(105, 'C001', 'Lagos', 11000),
(106, 'C001', 'Lagos', 7500),
(107, 'C004', 'Lagos', 5000),
(108, 'C002', 'Abuja', 9500);

drop database if exists salesdb;




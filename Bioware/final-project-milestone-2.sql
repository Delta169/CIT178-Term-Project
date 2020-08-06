CREATE DATABASE Bioware

GO
USE Bioware;
CREATE TABLE Products(
	ID int NOT NULL,
	Name varchar(20) NOT NULL,
	Release Date NOT NULL,
	Units varchar(6) NOT NULL,
	Sales money,
	PRIMARY KEY (ID)
);
GO
CREATE TABLE Retailers(
	RetailerID int NOT NULL,
	Retailers varchar(200) NOT NULL,
	Zipcode int NOT NULL,
	Email varchar(30),
	Phone varchar(15),
	PRIMARY KEY(RetailerID)
);
GO
CREATE TABLE Location(
	ID int NOT NULL,
	Location varchar(20) NOT NULL,
	Zipcode int NOT NULL,
	PRIMARY KEY(ID)
	);
GO
CREATE TABLE Zipcode(
	Zipcode varchar(10) NOT NULL,
	City varchar(15) NOT NULL,
	State varchar(6)NOT NULL,
	PRIMARY KEY (Zipcode)
);
GO
CREATE TABLE Orders(
	ID int NOT NULL,
	Date varchar(50) NOT NULL,
	LocationID int NOT NULL,
	RetailerID int NOT NULL,
	CustomerID int NOT NULL,
	PRIMARY KEY (ID)
);
GO
CREATE TABLE OrderDetails(
	OrderID int NOT NULL,
	ID int NOT NULL,
	Inventory# varchar(50) NOT NULL,
	Qty varchar(30) NOT NULL,
	PRIMARY KEY (OrderID,ID)
);
GO
CREATE TABLE Customers(
	ID int NOT NULL,
	Name varchar(50) NOT NULL,
	Address varchar(25) NOT NULL,
	Zipcode int NOT NULL,
	Phone# varchar(40) NOT NULL,
	Email varchar(30) NOT NULL,
	PRIMARY KEY (ID)
);
GO
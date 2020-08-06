/* Final Project Views

USE Bioware;
GO

View #1 

--updatable view--
CREATE VIEW ID
AS
SELECT Name, Release, Units, Sales
FROM Products;
GO

--original data--

SELECT * FROM ID;

--updating price--

Go
UPDATE Products
SET Sales = 75
WHERE Units=3;
GO

--displaying new data--

SELECT * FROM ID;

 View #2 

--creating view--

GO
CREATE VIEW Bioware
AS
SELECT Customers.Name, Address, Phone#, Email
FROM Customers JOIN Zipcode ON Customers.Zipcode = Zipcode.Zipcode;

--using the view to display the data--
SELECT * FROM Bioware;

View #3 

GO
CREATE VIEW TotalRetailers
AS
SELECT Retailers, Zipcode, Email, Phone
FROM Retailers JOIN Orders ON Orders.RetailerID = Retailers.RetailerID;
GO

--using the view to display the data--
SELECT * FROM TotalRetailers;

View #4

GO
CREATE VIEW CustomersInfo
AS
SELECT Name, Address, Zipcode, Phone#, Email FROM Customers;
GO

--using the view to display the data--
SELECT * FROM CustomersInfo;*/
/* Final Project Procedures 

--Retrieves and displays data
USE Bioware;
GO
CREATE PROC spSalesReport
AS

SELECT Name, Release, Units, Sales
FROM Products JOIN Orders
		ON Orders.RetailerID = Products.ID
WHERE Units + Sales > 0
ORDER BY Name;

EXEC spSalesReport;

--Takes an input parameter
USE Bioware;
GO
CREATE PROC spGetCustomer
			@CustomerID int
AS
BEGIN
			SELECT * FROM Orders
			WHERE CustomerID = @CustomerID;
END
GO
EXEC spGetCustomer 1

--Takes one input parameter and returns three output parameters
USE Bioware;
GO
CREATE PROC spCustomerContact

		@Phone# varchar(40) OUTPUT,
		@Address varchar(25) OUTPUT,
		@Email varchar(30) OUTPUT
AS
SELECT @Phone# = Phone#, @Email = Email, @Address = Address
FROM Customers
WHERE @Phone#= Phone#;
GO
--Run the procedure--
DECLARE @Phone# varchar(40);
DECLARE @Address varchar(25);
DECLARE @Email varchar(30);
EXEC spCustomerContact @Phone# OUTPUT, @Address OUTPUT, @Email OUTPUT;
SELECT @Phone# AS 'Phone#', @Address AS 'Address', @Email AS 'Email';

--Store procedure that has a return value--

USE Bioware;
GO
CREATE PROC spSalesCount
AS
DECLARE @Sales money;
SELECT @Sales = COUNT(*)
FROM Products
RETURN @Sales;
GO

DECLARE @Sales money;
EXEC @Sales = spSalesCount;
PRINT 'There is ' + CONVERT(varchar, @Sales) + ' of sales in your database';
GO

Final Project User Defined Functions

--creates the function--

--USE Bioware;
--GO
--CREATE FUNCTION fnSales
	--(@Sales nvarchar(50) = '$')
	--RETURNS int
--BEGIN
	--RETURN (SELECT Sales FROM Products WHERE Sales Like @Sales);
--END;

--uses the function--

--GO
--SELECT Sales, Release FROM Products
--WHERE Sales = dbo.Products('Units%');

--USE Bioware;
--GO
--CREATE FUNCTION fnUnits
		--(@Units nvarchar(50) = '$')
		--RETURNS table
--RETURN
		--(SELECT Units FROM Products WHERE Units Like @Units);
--GO
--SELECT * FROM dbo.Products('$B$');

Final Project Triggers 

--create archive table by copying OrderDetails table without any rows
USE Bioware;
SELECT * INTO Inventory#
FROM OrderDetails
WHERE 1=0;
GO

--update OrderDetails table and add activity column for status
ALTER TABLE OrderDetails
ADD Activity varchar(50);
GO

--create insert trigger
--CREATE TRIGGER Inventory#_INSERT ON Products
	--AFTER INSERT
--AS
--BEGIN
	--SET NOCOUNT ON;
	--DECLARE @OrderID int
	--DECLARE @ID int
	--DECLARE @Inventory# int
	--DECLARE @Qty varchar(30)

--SELECT @OrderID=INSERTED.OrderID, @ID = INSERTED.ID, @Qty = INSERTED.Qty, @Inventory# = INSERTED.Inventory#
	--FROM INSERTED

	--INSERT INTO OrderDetails VALUES (@OrderID,@ID,@Qty,@Inventory#, 'Inserted')
--END
--GO
--add row into Products to test insert trigger
INSERT INTO Products VALUES(7,'Squadrons', '24-OCT-20', '60', 1000000);
GO
--view data in Products
SELECT * FROM Products;
GO
--create deleted trigger--
--CREATE TRIGGER Products_DELETE ON Products
	--AFTER DELETE
--AS
--BEGIN
	--SET NOCOUNT ON;
	--DECLARE @OrderID int
	--DECLARE @ID int
	--DECLARE @Inventory# int
	--DECLARE @Qty varchar(30)

--SELECT @OrderID=DELETED.OrderID, @ID = DELETED.ID, @Qty = INSERTED.Qty, @Inventory# = DELETED.Inventory#
	--FROM DELETED

	--INSERT INTO OrderDetails VALUES (@OrderID,@ID,@Qty,@Inventory#, 'Deleted')
--END
--GO
--delete row from customer to test delete trigger
DELETE FROM Products WHERE ID=7;

--view data in Products
SELECT * FROM Products
GO

--create update trigger
--CREATE TRIGGER Products_Update ON Products
	--AFTER UPDATE
--AS
--BEGIN
	--SET NOCOUNT ON;
	--DECLARE @OrderID int
	--DECLARE @ID int
	--DECLARE @Inventory# int
	--DECLARE @Qty varchar(30)

--SELECT @OrderID=DELETED.OrderID, @ID = DELETED.ID, @Qty = INSERTED.Qty, @Inventory# = DELETED.Inventory#
	--FROM DELETED
	--since all the data is being written to the table, there is no need to identify what was changed
	--INSERT INTO OrderDetails VALUES (@OrderID,@ID,@Qty,@Inventory#, 'Updated')
--END
--GO
--insert a new row and then update the row(this will test he insert and update triggers)
INSERT INTO Products VALUES(7,'Squadrons','24-OCT-20','60',1000000);
GO
UPDATE Products
SET Name = 'Rogue'
WHERE ID = 7;
GO
--view data in Products
SELECT * FROM Products*/
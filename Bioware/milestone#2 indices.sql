USE Bioware;
GO
CREATE INDEX idx_Zipcode ON Customers(Zipcode);
GO
CREATE INDEX idx_Products ON Orders(CustomerID);
GO
CREATE INDEX idx_Location ON Retailers(Zipcode);
GO
CREATE INDEX idx_Orders ON OrderDetails(Inventory#);

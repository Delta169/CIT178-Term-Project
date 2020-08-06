/*USE Bioware;
INSERT INTO Zipcode VALUES ('55423','Minneapolis','MN')
INSERT INTO Zipcode VALUES ('76051','Grapevine','TX')
INSERT INTO Zipcode VALUES ('98109','Seattle','WA')
INSERT INTO Zipcode VALUES ('53158','Pleasant Praire','WI')
INSERT INTO Zipcode VALUES ('98004','Bellvue','WA')
INSERT INTO Zipcode VALUES ('94065','Redwood City','CA')

SELECT * FROM Zipcode;

INSERT INTO Products VALUES (1,'Command and Conquer Generals 2','29-Oct-13','$60','2,500,000')
INSERT INTO Products VALUES (2,'Dragon Age Inquisition','18-Nov-14','$60','5,000,000')
INSERT INTO Products VALUES (3,'Shadow Realms','9-Feb-15','$60','1,000,000')
INSERT INTO Products VALUES (4,'Mass Effect Andromeda','23-Mar-17','$60','20,000,000')
INSERT INTO Products VALUES (5,'Anthem','22-FEB-19','$60','15,000,000')
INSERT INTO Products VALUES (6,'Dragon Age The Dread Wolf Rises','TBA','$60','30,000,000')

SELECT * FROM Products;

INSERT INTO Products VALUES (1,'Command and Conquer Generals 2','29-Oct-13','$60','2,500,000')

SELECT * FROM Products;

USE Bioware;
INSERT INTO Products VALUES (1,'Command&Conquer 2','29-Oct-13',60,2500000)
INSERT INTO Products VALUES (2,'Dragon Age Inq','18-Nov-14',60,5000000)
INSERT INTO Products VALUES (4,'Mass Effect','23-Mar-18',60,20000000)
INSERT INTO Products VALUES (6,'Dragon Age 5','1-Jan-20',60,30000000)

SELECT * FROM Products;

INSERT INTO Location VALUES (1,'Grandview Mall','55423')
INSERT INTO Location VALUES (2,'Cherryland Mall','76051')
INSERT INTO Location VALUES (3,'Fresco Mall','98109')
INSERT INTO Location VALUES (4,'Roseville Plaza','53158')
INSERT INTO Location VALUES (5,'St Anthonys Place','98004')
INSERT INTO Location VALUES (6,'123 Park Avenue','94065')

SELECT * FROM Location;

INSERT INTO Retailers VALUES (1,'Best Buy','55423','customer.support@bestbuy.com','888-237-8289')
INSERT INTO Retailers VALUES (2,'Gamestop','76051','powerup@gamestop.com','817-424-2000')
INSERT INTO Retailers VALUES (3,'Amazon','98109',NULL,'206-266-1000')
INSERT INTO Retailers VALUES (4,'Target','53158','InvestorRelations@target.com','800-775-3110')
INSERT INTO Retailers VALUES (5,'Steam','98004','gaben@valvesoftware.com','425-889-9642')
INSERT INTO Retailers VALUES (6,'EA/Origin','94065','support@ea.com','800-314-3291')

SELECT * FROM Retailers;

INSERT INTO Customers VALUES (1,'Fred Flintsone','209 Redwood Shores Pkwy','55423','703-555-1234','fred@quarry.net')
INSERT INTO Customers VALUES (2,'Betty Rubble','9911 Covington Cross Dr','76051','702-228-4040','betty@quarry.net')
INSERT INTO Customers VALUES (3,'Scooby Doo','555 Snacks Lane','98109','468-452-3000','scooby@quarry.net')
INSERT INTO Customers VALUES (4,'Shaggy','7700 W Palmer Ln','53158','512-382-8682','shaggy@quarry.net')
INSERT INTO Customers VALUES (5,'Daphne Blake','20131 Prairie St','98004','818-960-4400','daphne@quarry.net')

SELECT * FROM Customers;

INSERT INTO Orders VALUES (1,'6/1/2020', 2, 3, 6)
INSERT INTO Orders VALUES (2,'6/2/2020', 1, 4, 2)
INSERT INTO Orders VALUES (3,'6/3/2020', 3, 4, 1)
INSERT INTO Orders VALUES (4,'6/4/2020', 4, 2, 3)
INSERT INTO Orders VALUES (5,'6/5/2020', 4, 1, 4)
INSERT INTO Orders VALUES (6,'6/6/2020', 5, 5, 5)

SELECT * FROM Orders;

INSERT INTO OrderDetails VALUES (4, 1, 4, '5')
INSERT INTO OrderDetails VALUES (3, 2, 5, '4')
INSERT INTO OrderDetails VALUES (3, 3, 3, '2')
INSERT INTO OrderDetails VALUES (2, 4, 3, '3')
INSERT INTO OrderDetails VALUES (2, 5, 2, '2')
INSERT INTO OrderDetails VALUES (1, 6, 1, '2')
INSERT INTO OrderDetails VALUES (1, 7, 5, '3')
INSERT INTO OrderDetails VALUES (6, 8, 1, '4')
INSERT INTO OrderDetails VALUES (5, 9, 2, '5')
INSERT INTO OrderDetails VALUES (5, 10, 3, '1')*/

SELECT * FROM OrderDetails;
CREATE DATABASE IF NOT EXISTS RetailShop;  
USE RetailShop;

CREATE TABLE Customers(
     CustomerID INT PRIMARY KEY,
     CustomerName VARCHAR(100)
 );    
 
 CREATE TABLE Orders(
     OrderID INT PRIMARY KEY,
     Product VARCHAR(100),
     Amount DECIMAL(10,2),
     CustomerID INT,
     FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
  );   

-- CUSTOMERS TABLE
INSERT INTO Customers(CustomerID, CustomerName)
VALUES
(1, 'Rahul Sharma'),
(2, 'Anjali Mehta'),
(3, 'Amit Verma');

INSERT INTO Customers(CustomerID, CustomerName)
VALUES
(4, ' Nishi roy');

-- ORDERS TABLE
INSERT INTO Orders(OrderID, Product, Amount, CustomerID)
VALUES
(101, 'Laptop', 50000, 2),
(102, 'Mouse', 500, 1),
(103, 'Keyboard', 700, 1);

INSERT INTO Orders(OrderID, Product, Amount, CustomerID)
VALUES
(104, 'Moniter', 120000, NULL);

SELECT *FROM Orders;
-- INNER JOIN
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN simulation Using LEFT And RIGHT and UNION JOINS
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION 

SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
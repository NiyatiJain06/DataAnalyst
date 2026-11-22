CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

CREATE TABLE Customers(
     CustomerID INT AUTO_INCREMENT PRIMARY KEY,
     Name VARCHAR(100),
     Email VARCHAR(100) UNIQUE,
     Address VARCHAR(200)
     );

SELECT *FROM Customers;

INSERT INTO Customers(Name, Email, Address)
VALUES
('Amit Kumar', 'amit123@gmail.com', 'Delhi, India'),
('Neha Verma', 'neha456@gmail.com', 'Bangalore, India');

INSERT INTO Customers(Name, Email, Address)
VALUES('Rahul Sharma', 'rahul789@gmail.com', 'Bangalore. India');

INSERT INTO Customers(Name, Email, Address)
VALUES('Sakshi Yadav', 'sakshi689@gmail.com', 'Bangalore, India');

INSERT INTO Customers(Name, Email, Address)
VALUES('Shivani Yadav', 'shivani689@gmail.com', 'Mumbai, India');


SELECT Name FROM Customers;

SELECT DISTINCT Address FROM Customers;

SELECT *FROM Customers WHERE Address LIKE '%Delhi%';

SELECT *FROM Customers WHERE Name = 'Shivani Yadav' AND Address LIKE '%Mumbai%';

SELECT *FROM Customers WHERE Address NOT LIKE '%Mumbai%';

UPDATE Customers
SET Address = 'Pune'
WHERE CustomerID = 3;

SELECT *FROM Customers WHERE CustomerID = 3 ;

DELETE FROM Customers
WHERE Name = 'Sakshi Yadav';

SET SQL_SAFE_UPDATES = 0;

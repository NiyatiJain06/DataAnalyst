CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE SalesRecords(
     Product VARCHAR(100),
     Category VARCHAR(100),
     Amount DECIMAL(10,2) ,
     SaleDate DATE
     );
     
INSERT INTO SalesRecords(Product, Category, Amount, SaleDate)
VALUES
('Pen', 'Stationery', 25.00, '2024-03-01'),
('Notebook', 'Stationery', 50.00, '2024-03-01'),   
('Mouse', 'Electronics', 500.00, '2024-03-02'),   
('Keyboard', 'Electronics', 700.00, '2024-03-02'),   
('Charger', 'Electronics', 300.00, '2024-03-03'),  
('Bag', 'Accessories', 1000.00, '2024-03-04');   
     
SELECT *FROM SalesRecords;     

SET SQL_SAFE_UPDATES= 0;
     
UPDATE SalesRecords
SET Amount = '500.00'
WHERE Product = 'Charger';
SELECT *FROM SalesRecords WHERE Product = 'Charger';

DELETE FROM SalesRecords
WHERE Product = 'Mouse';

SELECT *FROM SalesRecords ORDER BY Category DESC;

SELECT *FROM SalesRecords WHERE Product LIKE '%Pen%'; 

SELECT COUNT(*) FROM SalesRecords;
SELECT SUM(Amount) FROM SalesRecords;
SELECT AVG(Amount) FROM SalesRecords;
SELECT MIN(Amount), MAX(Amount) FROM SalesRecords;

SELECT Category, SUM(Amount)
FROM SalesRecords
GROUP BY Category
HAVING SUM(Amount)>1000;

-- Subquries

SELECT Product, Amount
FROM SalesRecords
WHERE Amount > (SELECT AVG(Amount) FROM SalesRecords);
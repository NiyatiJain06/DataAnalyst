CREATE DATABASE CollegeDB;
USE CollegeDB;
SELECT DATABASE();

CREATE TABLE Students(
    StudentsID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age TINYINT,
    Email VARCHAR(100),
    JoinDate DATE
);
SELECT *FROM Students;

INSERT INTO Students (Name, Age, Email, JoinDate)
VALUES
('Amit Gupta', 22, 'amit2@gmail.com', '2025-02-20'),
('Nishi Sharma', 21, 'nishi32@gmail.com', '2024-04-10')
;

ALTER TABLE Students ADD COLUMN City VARCHAR(50);
ALTER TABLE Students MODIFY Age SMALLINT;
ALTER TABLE Students RENAME COLUMN Email TO StudentEmail;

CREATE DATABASE CompanyDB;
USE CompanyDB;
SELECT DATABASE();

CREATE TABLE Employees(
	EmployeesID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Salary BIGINT,
    Email VARCHAR(100),
    JoinDate DATE
);

SELECT *FROM Employees;
INSERT INTO Employees (Name, Salary, Email, JoinDate)
VALUES 
('Niyati Jain', 70000, 'niyati2@gmail.com', '2025-02-20'),
('Sparsh Jain', 80000, 'sparsh32@gmail.com', '2024-04-10')
;
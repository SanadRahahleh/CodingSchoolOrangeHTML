CREATE DATABASE StoreDB;

USE StoreDB;

CREATE TABLE Users (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Age INT
);

CREATE TABLE Orders (
    Id INT PRIMARY KEY,
    UserId INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

--1
INSERT INTO Users (Id, Name, Email, Age)
VALUES 
(1, 'Ahmad', 'ahmad@gmail.com', 25),
(2, 'Ali', 'ali@gmail.com', 30),
(3, 'Sara', 'sara@gmail.com', 22);

--2
INSERT INTO Orders (Id, UserId, ProductName, Price)
VALUES
(1, 1, 'Laptop', 800),
(2, 2, 'Phone', 500),
(3, 1, 'Mouse', 20),
(4, 3, 'Keyboard', 50
);

--3
INSERT INTO Users (Id, Name, Age)
VALUES (4, 'Omar', 28);

--4
UPDATE Users
SET Email = 'sara_new@gmail.com'
WHERE Name = 'Sara';

--5
UPDATE Orders
SET Price = Price + 10;

--6
UPDATE Users
SET Name = 'Ali Ahmad'
WHERE Id = 2;

--7
DELETE FROM Users
WHERE Id = 4;

--8
DELETE FROM Orders
WHERE Price < 50;

--9
DELETE FROM Orders
WHERE UserId = 3;

--10
SELECT * FROM Users;

--11
SELECT Name, Email FROM Users;


--12
SELECT * FROM Users
WHERE Age > 25;

--13
SELECT * FROM Users
WHERE Name LIKE 'A%';

--14
SELECT * FROM Users
WHERE Email IS NULL;

--15
SELECT * FROM Orders
WHERE Price BETWEEN 50 AND 800;

--16
SELECT * FROM Orders
WHERE ProductName LIKE '%Phone%';

--17
SELECT * FROM Orders
ORDER BY Price DESC;

--18
SELECT Name
FROM Users
WHERE Age < 30
ORDER BY Name ASC;

--19
SELECT *
FROM Orders
WHERE Price > 100 AND UserId = 1;

--20
SELECT *
FROM Users
WHERE Age BETWEEN 20 AND 30
AND Name LIKE '%a%';
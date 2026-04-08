-- 1
CREATE DATABASE OnlineStore;
USE OnlineStore;

-- 2,3,4
CREATE TABLE Users (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- 5,6
CREATE TABLE Products (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10,2) NOT NULL
);

-- 7,8,9
CREATE TABLE Orders (
    Id INT PRIMARY KEY,
    UserId INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserId) REFERENCES Users(Id)
);

-- 10
CREATE TABLE OrderProducts (
    OrderId INT,
    ProductId INT,
    PRIMARY KEY (OrderId, ProductId),
    FOREIGN KEY (OrderId) REFERENCES Orders(Id),
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);

-- 11
CREATE TABLE Categories (
    Id INT PRIMARY KEY,
    Name VARCHAR(100)
);

ALTER TABLE Products
Add CategoryId INT,
FOREIGN KEY (CategoryId) REFERENCES Categories(Id);

-- 12 (self relation)
CREATE TABLE Employees (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    ManagerId INT,
    FOREIGN KEY (ManagerId) REFERENCES Employees(Id)
);


-- 13
ALTER TABLE Users ADD Phone VARCHAR(20);
ALTER TABLE Users DROP COLUMN Phone;

-- 14
ALTER TABLE Users
ALTER COLUMN Name VARCHAR(200);

-- 15
CREATE TABLE Customers (
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20)
);

-- 16
CREATE TABLE Payments (
    Id INT PRIMARY KEY,
    OrderId INT,
    FOREIGN KEY (OrderId) REFERENCES Orders(Id)
);

-- 17
CREATE TABLE Students (
    Id INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- 18
CREATE TABLE Courses (
    Id INT PRIMARY KEY,
    Title VARCHAR(100)
);

-- 19 (many-to-many)
CREATE TABLE StudentCourses (
    StudentId INT,
    CourseId INT,
    PRIMARY KEY (StudentId, CourseId),
    FOREIGN KEY (StudentId) REFERENCES Students(Id),
    FOREIGN KEY (CourseId) REFERENCES Courses(Id)
);

-- 20
CREATE TABLE Logs (
    Id INT PRIMARY KEY,
    Message TEXT,
    LogDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 21
TRUNCATE TABLE Logs;

-- 22
ALTER TABLE Users DROP COLUMN Name;

-- 23
DROP TABLE Customers;

CREATE TABLE AutoTable (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100)
);

-- 25
CREATE TABLE TestTable (
    RequiredCol VARCHAR(100) NOT NULL,
    OptionalCol VARCHAR(100)
);

-- 26
CREATE TABLE Books (
    Id INT PRIMARY KEY,
    Title VARCHAR(100),
    Price DECIMAL(10,2)
);

-- 27
CREATE TABLE Authors (
    Id INT PRIMARY KEY,
    Name VARCHAR(100)
);

ALTER TABLE Books
ADD AuthorId INT,
 FOREIGN KEY (AuthorId) REFERENCES Authors(Id);

-- 28
CREATE TABLE OnlyIds (
    Id INT
);

-- 29
CREATE TABLE MixedTable (
    NumberCol INT,
    TextCol VARCHAR(100),
    DateCol DATE
);

-- 30
CREATE TABLE UniqueTest (
    Email VARCHAR(100)
);

ALTER TABLE UniqueTest
ADD UNIQUE (Email);

--------------------------------------------------
-- Optional Tasks

-- 1
CREATE DATABASE TestDB;
DROP DATABASE TestDB;

-- 2
CREATE TABLE Products2 (
    Name VARCHAR(100),
    Price DECIMAL(10,2)
);

-- 3
ALTER TABLE Products2 ADD Description TEXT;

-- 4
DROP TABLE Products2;

-- 5
CREATE TABLE OneColumn (
    OnlyCol INT
);

--6
CREATE TABLE #TempTable (
    Id INT
);
--7
CREATE TABLE TempData (
    Id INT
);

TRUNCATE TABLE TempData;

-- 8
CREATE TABLE EmailTable (
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- 9
CREATE TABLE PriceTable (
    Price DECIMAL(10,2) NOT NULL
);

-- 10
CREATE TABLE ComplexTable (
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);
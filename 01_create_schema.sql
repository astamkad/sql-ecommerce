-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Country TEXT,
    SignupDate DATE
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category TEXT,
    Price DECIMAL(10,2)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert sample data into Customers
INSERT INTO Customers (CustomerID, Name, Country, SignupDate) VALUES
(1, 'Alice Johnson', 'USA', '2024-01-15'),
(2, 'Carlos Mendez', 'Mexico', '2024-03-01'),
(3, 'Juliet John', 'USA', '2024-05-15'),
(4, 'Fatima Yusuf', 'Nigeria', '2023-11-20'),
(5, 'Noah Musa', 'Nigeria', '2024-06-10');

-- Insert sample data into Products
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(101, 'Laptop', 'Electronics', 899.99),
(102, 'Headphones', 'Electronics', 199.99),
(103, 'Standing Desk', 'Furniture', 450.00);

-- Insert sample data into Orders
INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity, OrderDate) VALUES
(1001, 1, 101, 1, '2024-04-01'),
(1002, 2, 102, 2, '2024-04-03'),
(1003, 3, 103, 1, '2024-04-04'),
(1004, 5, 101, 2, '2024-11-20');

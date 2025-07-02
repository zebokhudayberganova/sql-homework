SELECT ProductName FROM Products
UNION
SELECT ProductName FROM OutOfStock;

SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;

SELECT ProductName FROM Products
EXCEPT
SELECT ProductName FROM Products_Discounted;

SELECT 
    ProductName,
    Price,
    IIF(Price > 1000, 'Expensive', 'Affordable') AS PriceCategory
FROM Products;

SELECT *
FROM Employees
WHERE Age < 25 OR Salary > 60000;

UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR' OR EmployeeID = 5;


SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM Products_Discounted;

SELECT 
    SaleID,
    SaleAmount,
    CASE 
        WHEN SaleAmount > 500 THEN 'Top Tier'
        WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
        ELSE 'Low Tier'
    END AS SaleCategory
FROM Sales;


SELECT CustomerID FROM Orders
EXCEPT
SELECT CustomerID FROM Invoices;

SELECT 
    SaleID,
    SaleAmount,
    CASE
        WHEN SaleAmount > 500 THEN 'Top Tier'
        WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
        ELSE 'Low Tier'
    END AS SaleCategory
FROM Sales;



SELECT CustomerID FROM Orders
EXCEPT
SELECT CustomerID FROM Sales;


SELECT
    CustomerID,
    Quantity,
    CASE
        WHEN Quantity = 1 THEN '3%'
        WHEN Quantity > 1 AND Quantity <= 3 THEN '5%'
        ELSE '7%'
    END AS DiscountPercentage
FROM Orders;


INSERT INTO Products_Discounted (ProductID, ProductName, Price, Category, Stock)
VALUES
(1, 'Gaming Laptop', 950.00, 'Electronics', 25),
(2, 'High-End Smartphone', 750.00, 'Electronics', 45),
(2, 'Smartphone', 750.00, 'Electronics', 45),
(3, 'Convertible Tablet', 350.00, 'Electronics', 35),
(4, 'Ultra-Wide Monitor', 220.00, 'Electronics', 55),
(5, 'Mechanical Keyboard', 45.00, 'Accessories', 90),
(6, 'Wireless Mouse', 25.00, 'Accessories', 110),
(7, 'Ergonomic Chair', 130.00, 'Furniture', 75),
(7, 'Chair', 130.00, 'Furniture', 75),
(8, 'Standing Desk', 190.00, 'Furniture', 70),
(9, 'Luxury Pen', 4.50, 'Stationery', 280),
(10, 'Leather Notebook', 9.00, 'Stationery', 480),
(11, 'Laser Printer', 160.00, 'Electronics', 20),
(12, 'DSLR Camera', 480.00, 'Electronics', 35),
(13, 'LED Flashlight', 20.00, 'Tools', 190),
(14, 'Designer Shirt', 28.00, 'Clothing', 140),
(15, 'Slim Fit Jeans', 40.00, 'Clothing', 110),
(15, 'Jeans', 40.00, 'Clothing', 110),
(16, 'Winter Jacket', 70.00, 'Clothing', 60),
(17, 'Running Shoes', 55.00, 'Clothing', 90),
(18, 'Wool Hat', 18.00, 'Accessories', 45),
(19, 'Thermal Socks', 9.00, 'Clothing', 180),
(20, 'Graphic T-Shirt', 22.00, 'Clothing', 140),
(20, 'T-Shirt', 22.00, 'Clothing', 140),
(21, 'Desk Lamp', 55.00, 'Furniture', 35),
(22, 'Marble Coffee Table', 95.00, 'Furniture', 30),
(23, 'Hardcover Book', 13.00, 'Stationery', 230);

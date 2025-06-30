SELECT TOP 5 * 
FROM Employees;

SELECT DISTINCT Category 
FROM Products;

SELECT * 
FROM Products 
WHERE Price > 100;

SELECT * 
FROM Customers 
WHERE FirstName LIKE 'A%';

SELECT * 
FROM Products 
ORDER BY Price ASC;

SELECT * 
FROM Employees 
WHERE Salary >= 60000 AND DepartmentName = 'HR';

SELECT 
    EmployeeID,
    FirstName,
    LastName,
    ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees;

SELECT * 
FROM Products 
WHERE Price BETWEEN 50 AND 100;

SELECT DISTINCT Category, ProductName 
FROM Products;

SELECT DISTINCT Category, ProductName 
FROM Products 
ORDER BY ProductName DESC;

SELECT TOP 10 * 
FROM Products 
ORDER BY Price DESC;

SELECT EmployeeID, COALESCE(FirstName, LastName) AS FullName 
FROM Employees;

SELECT DISTINCT Category, Price 
FROM Products;

SELECT * 
FROM Employees 
WHERE (Age BETWEEN 30 AND 40) OR DepartmentName = 'Marketing';

SELECT * 
FROM Employees 
ORDER BY Salary DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

SELECT * 
FROM Products 
WHERE Price <= 1000 AND StockQuantity > 50
ORDER BY StockQuantity ASC;

SELECT * 
FROM Products 
WHERE ProductName LIKE '%e%';

SELECT * 
FROM Employees 
WHERE DepartmentName IN ('HR', 'IT', 'Finance');

SELECT * 
FROM Customers 
ORDER BY City ASC, PostalCode DESC; 



Hard:

SELECT TOP(5) ProductName, SalesAmount
FROM Products
ORDER BY SalesAmount DESC;

SELECT FirstName + ' ' + LastName AS FullName
FROM Employees;

SELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;

SELECT ProductName, Price
FROM Products
WHERE Price < 0.1 * (SELECT AVG(Price) FROM Products);


SELECT *
FROM Employees
WHERE Age < 30
AND Department IN ('HR', 'IT');


SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com';


SELECT *
FROM Employees
WHERE Salary > ALL (
    SELECT Salary
    FROM Employees
    WHERE Department = 'Sales'
);


SELECT *
FROM Orders
WHERE OrderDate BETWEEN DATEADD(DAY, -180, (SELECT MAX(OrderDate) FROM Orders))
                    AND (SELECT MAX(OrderDate) FROM Orders);






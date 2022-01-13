-- SQLite
--QUESTION 2A
SELECT COUNT(*) 
FROM orders a JOIN Shippers b ON a.ShipperID = b.ShipperID
WHERE ShipperName = "Speedy Express"
Answer = 54

--QUESTION 2B
SELECT LastName, COUNT(OrderID) AS Num_Orders
FROM Employees e JOIN Orders o ON e.EmployeeID = O.EmployeeID
GROUP BY LastName
ORDER BY Num_Orders DESC
LIMIT 1
Answer = Peacock with 40 orders

--QUESTION 2C
SELECT ProductName, COUNT(Quantity)
FROM Orders a JOIN Customers b ON a.CustomerID = b.CustomerID 
JOIN OrderDetails c ON a.OrderID = c.OrderID 
JOIN Products d ON d.ProductID = c.ProductID
WHERE Country='Germany'
ORDER BY Quantity DESC
LIMIT 1 

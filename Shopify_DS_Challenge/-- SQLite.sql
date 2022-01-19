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
SELECT ProductName, SUM(e.Quantity) AS Most_Ordered_Germany
FROM OrderDetails e
JOIN Products p ON p.ProductID=e.ProductID
JOIN Orders o ON o.OrderID=e.OrderID
JOIN Customers c ON c.CustomerID=o.CustomerID
WHERE Country="Germany"
GROUP BY e.ProductID
ORDER BY Most_Ordered_Germany DESC
LIMIT 1;
Answer = Boston Crab Meat with 160 Orders

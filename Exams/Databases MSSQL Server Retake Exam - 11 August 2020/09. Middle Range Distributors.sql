SELECT DistributorName,IngredientName,ProductName,[AverageRate] FROM(SELECT D.Name AS DistributorName,I.Name AS IngredientName,P.Name AS ProductName, AVG(F.Rate) AS [AverageRate] FROM Distributors AS D
JOIN Ingredients AS I ON I.DistributorId = D.Id
JOIN ProductsIngredients AS PIN ON PIN.IngredientId = I.Id
JOIN Products AS P ON P.Id = PIN.ProductId
JOIN Feedbacks AS F ON F.ProductId = P.Id
GROUP BY D.Name,I.Name,P.Name) AS RANK
WHERE AverageRate BETWEEN 5.0 AND 8.0
ORDER BY DistributorName, IngredientName, ProductName
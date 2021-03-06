SELECT CONCAT(C.FirstName, ' ',C.LastName) AS [CustomerName],C.PhoneNumber,C.Gender FROM Customers AS C
LEFT JOIN Feedbacks AS F ON F.CustomerId = C.Id
WHERE (F.Description IS NULL AND F.Rate IS NULL)
ORDER BY C.Id
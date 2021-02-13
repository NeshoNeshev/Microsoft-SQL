SELECT F.ProductId,F.Rate,F.Description,F.CustomerId,C.Age,C.Gender FROM Feedbacks AS F
JOIN Customers AS C ON C.Id= F.CustomerId
WHERE Rate<5.0
ORDER BY ProductId DESC,RATE ASC
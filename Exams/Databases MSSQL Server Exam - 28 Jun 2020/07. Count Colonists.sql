SELECT COUNT(J.Purpose) AS [count]  FROM Journeys AS J
JOIN TravelCards AS TR ON TR.JourneyId = J.Id
JOIN Colonists AS C ON C.Id = TR.ColonistId
WHERE J.Purpose ='technical'
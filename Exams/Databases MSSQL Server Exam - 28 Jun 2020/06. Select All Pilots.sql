SELECT C.Id, C.FirstName+' '+ C.LastName AS [full_name] FROM Colonists AS C
JOIN TravelCards AS TR ON TR.ColonistId = C.Id
WHERE TR.JobDuringJourney = 'pilot'
ORDER BY C.Id ASC
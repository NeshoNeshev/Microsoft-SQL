SELECT S.Name, S.Manufacturer FROM Spaceships AS S
	JOIN Journeys AS J ON J.SpaceshipId = S.Id
	JOIN TravelCards AS TR ON TR.JourneyId = J.Id
	JOIN Colonists AS C ON C.Id = TR.ColonistId
		WHERE DATEDIFF (YEAR, C.BirthDate, '01/01/2019') < 30 AND TR.JobDuringJourney = 'pilot'
			ORDER BY Name
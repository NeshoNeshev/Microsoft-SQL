SELECT J.Id,
	FORMAT(j.JourneyStart,'dd/MM/yyyy') AS [JourneyStart],
	FORMAT(j.JourneyEnd,'dd/MM/yyyy') AS[JourneyEnd]  FROM Journeys AS j
		WHERE j.Purpose = 'Military'
			ORDER BY J.JourneyStart ASC
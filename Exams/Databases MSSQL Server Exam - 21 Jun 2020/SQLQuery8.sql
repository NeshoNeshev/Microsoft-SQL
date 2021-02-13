SELECT
	C.Name AS [City],
	COUNT(C.Name) AS Hotels
		FROM Cities AS C
			RIGHT JOIN HOTELS AS H ON H.CityId= C.Id
				GROUP BY C.Name
					ORDER BY Hotels DESC, C.Name
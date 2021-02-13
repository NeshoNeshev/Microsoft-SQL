SELECT
	A.Id, A.FirstName+' '+ A.LastName AS FullName,
	MAX(DATEDIFF(DAY,T.ArrivalDate,T.ReturnDate)) AS LongestTrip,
	MIN(DATEDIFF(DAY,T.ArrivalDate,T.ReturnDate)) AS ShortestTrip FROM Trips AS T
		JOIN AccountsTrips AS act ON ACT.TripId = T.Id
		JOIN Accounts AS A ON A.Id = ACT.AccountId
			WHERE T.CancelDate IS NULL AND A.MiddleName IS NULL
				GROUP BY A.Id, A.FirstName,A.LastName
					ORDER BY LongestTrip DESC, ShortestTrip ASC
SELECT A.Id,
       A.Email,
       c.Name       AS City,
       COUNT(t2.Id) AS Trips
FROM Accounts AS A
         JOIN AccountsTrips T ON A.Id = T.AccountId
         JOIN Trips T2 ON T.TripId = T2.Id
         JOIN Rooms R2 ON R2.Id = T2.RoomId
         JOIN Hotels H ON R2.HotelId = H.Id
         JOIN Cities C ON C.Id = H.CityId
WHERE h.CityId = A.CityId
GROUP BY A.Id, A.Email, c.Name
ORDER BY Trips DESC, Id
CREATE FUNCTION udf_GetAvailableRoom(@HotelId int, @Date date, @People int)
    RETURNS nvarchar(max) AS
BEGIN
    DECLARE @roomId INT = (SELECT TOP (1) r.Id
                           FROM Trips AS t
                                    JOIN Rooms AS r ON t.RoomId = r.Id
                                    JOIN Hotels AS h ON r.HotelId = h.Id
                           WHERE h.Id = @HotelId
                             AND @Date NOT BETWEEN t.ArrivalDate AND t.ReturnDate
                             AND t.CancelDate IS NULL
                             AND r.Beds >= @People
                             AND YEAR(@Date) = YEAR(t.ArrivalDate)
                           ORDER BY r.Price DESC)

    IF (@roomId IS NULL)
        RETURN 'No rooms available'

    DECLARE @beds int=(SELECT beds FROM Rooms WHERE id = @roomId);
    DECLARE @baseRate decimal(18, 2)= (SELECT BaseRate
                                       FROM Hotels
                                       WHERE id = (SELECT HotelId FROM Rooms WHERE id = @roomId));
    DECLARE @roomPrice decimal(18, 2)=(SELECT Price FROM Rooms WHERE id = @roomId);
    DECLARE @roomType nvarchar(20)=(SELECT Type FROM Rooms WHERE id = @roomId)
    DECLARE @totalPrice decimal(18, 2)= (@baseRate + @roomPrice) * @People
    DECLARE @output nvarchar(max)=CONCAT('Room ', @RoomId, ': ', @RoomType, ' (', @beds, ' beds', ') - $', @TotalPrice)

    RETURN @output;


END


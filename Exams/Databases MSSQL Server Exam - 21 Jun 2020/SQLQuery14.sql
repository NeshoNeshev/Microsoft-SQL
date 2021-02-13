CREATE PROC usp_SwitchRoom(@TripId int, @TargetRoomId int)
AS
BEGIN
    DECLARE @tripHotelId int =(SELECT h.id
                               FROM Trips AS t
                                        JOIN Rooms AS r ON t.RoomId = r.Id
                                        JOIN Hotels AS h ON r.HotelId = h.Id
        where t.id=@TripId);
    DECLARE @RoomHotelId int= (SELECT  HotelId FROM rooms WHERE id = @TargetRoomId);
    if(@tripHotelId<>@RoomHotelId)
    begin
        THROW 50001,'Target room is in another hotel!',1;
    END
    DECLARE @CountTripAccounts int=(SELECT count(AccountId) from AccountsTrips where TripId=@TripId);
    declare @RoomBeds int=(SELECT Beds from Rooms where id=@TargetRoomId);
    if(@CountTripAccounts>@RoomBeds)
    begin
        throw 50002,'Not enough beds in target room!',1;
    END
    update Trips
    set RoomId=@TargetRoomId
    where id=@TripId
END
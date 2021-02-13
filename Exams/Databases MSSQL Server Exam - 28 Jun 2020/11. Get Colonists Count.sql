CREATE FUNCTION dbo.udf_GetColonistsCount(@PlanetName VARCHAR (30))
RETURNS INT
AS
BEGIN
  RETURN(  SELECT COUNT(C.Id) FROM Planets AS P
JOIN Spaceports AS S ON S.PlanetId = P.Id
JOIN Journeys AS J ON J.DestinationSpaceportId = S.Id
JOIN TravelCards AS TC ON TC.JourneyId= J.Id
JOIN Colonists AS C ON C.Id = TC.ColonistId
WHERE P.Name = @PlanetName)
END
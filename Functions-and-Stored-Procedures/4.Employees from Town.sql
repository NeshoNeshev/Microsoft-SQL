CREATE PROCEDURE usp_GetEmployeesFromTown (@Town NVARCHAR(50))
AS

SELECT FirstName, LastName FROM Employees AS e
	INNER JOIN Addresses AS a
	ON e.AddressID=a.AddressID
	INNER JOIN Towns AS t 
	ON t.TownID=a.TownID
		WHERE t.[Name] =@Town
GO

EXEC usp_GetEmployeesFromTown 'Sofia'
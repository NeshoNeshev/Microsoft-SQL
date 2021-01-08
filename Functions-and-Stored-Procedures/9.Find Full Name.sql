CREATE PROCEDURE usp_GetHoldersFullName
AS
SELECT a.FirstName + ' ' + a.LastName AS FullName
    FROM AccountHolders AS a
GO

EXEC usp_GetHoldersFullName
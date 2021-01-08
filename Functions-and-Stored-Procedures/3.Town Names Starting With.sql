CREATE PROCEDURE usp_GetTownsStartingWith(@string NVARCHAR(50))
AS
SELECT [Name]
    FROM Towns 
    WHERE [Name] LIKE @string
GO

EXEC usp_GetTownsStartingWith 'B'
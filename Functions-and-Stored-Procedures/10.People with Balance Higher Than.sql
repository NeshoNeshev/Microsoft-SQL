CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan(@balance decimal(18, 4))
AS
SELECT a.FirstName, a.LastName
    FROM AccountHolders AS a
             JOIN Accounts ac ON ah.Id = A.AccountHolderId
    GROUP BY a.FirstName, a.LastName
    HAVING SUM(ac.Balance) > @balance
    ORDER BY a.FirstName, a.LastName
GO

EXEC usp_GetHoldersWithBalanceHigherThan 15000
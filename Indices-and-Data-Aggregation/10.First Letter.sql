SELECT [FirstLetter] FROM (
	SELECT FirstName, SUBSTRING(FirstName,1,1) AS [FirstLetter] FROM WizzardDeposits
	WHERE DepositGroup = 'Troll Chest'
	) AS [FirstLaterQuery]
		GROUP BY FirstLetter
		
SELECT TOP(2) DepositGroup FROM 
	(SELECT DepositGroup, AVG(MagicWandSize) AS [AVGSIZE]
	FROM WizzardDeposits 
	GROUP BY DepositGroup) AS [AVGSIZEQUERY]
ORDER BY AVGSIZE
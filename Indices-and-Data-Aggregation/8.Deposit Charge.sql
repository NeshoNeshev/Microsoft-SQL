SELECT DepositGroup,w.MagicWandCreator,  MIN(w.DepositCharge) AS [MinDepositCharge]
	FROM WizzardDeposits AS w 
			GROUP BY DepositGroup,w.MagicWandCreator
				ORDER BY w.MagicWandCreator, w.DepositGroup
				
					
		
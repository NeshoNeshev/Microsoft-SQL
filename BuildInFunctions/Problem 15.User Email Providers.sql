SELECT [Username],SUBSTRING(Email,CHARINDEX('@',EMAIL)+1,LEN(Email))
	AS [Email Provider] FROM Users
      ORDER BY [Email Provider]
      
  
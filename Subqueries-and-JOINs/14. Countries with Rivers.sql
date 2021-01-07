SELECT TOP(5) c.CountryName,r.RiverName FROM Countries AS c
   FULL OUTER JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
   FULL OUTER JOIN Rivers AS r ON cr.RiverId= r.Id
WHERE c.ContinentCode='AF'
ORDER BY c.CountryName ASC
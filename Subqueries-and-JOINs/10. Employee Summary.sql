SELECT TOP (50)
	E.EmployeeID,
	CONCAT(E.FirstName,' ', E.LastName) AS [EmployeeName],
	CONCAT(EM.FirstName,' ',EM.LastName) AS [ManagerName],
	D.Name AS[DepartmentName]
	FROM Employees AS E
		LEFT JOIN Employees AS EM ON E.ManagerID= EM.EmployeeID
		JOIN Departments AS D ON D.DepartmentID = E.DepartmentID
			ORDER BY E.EmployeeID
		

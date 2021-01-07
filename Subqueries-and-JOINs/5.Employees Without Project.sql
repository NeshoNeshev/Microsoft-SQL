SELECT TOP(3) e.EmployeeID, e.FirstName FROM Employees AS e
	LEFT OUTER JOIN EmployeesProjects AS ep
	ON e.EmployeeID = EP.EmployeeID
		WHERE EP.ProjectID IS NULL
			ORDER BY e.EmployeeID ASC
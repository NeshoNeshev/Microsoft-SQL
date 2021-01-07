SELECT e1.EmployeeID,e1.FirstName,e1.ManagerID, e2.FirstName AS [ManagerName]
FROM Employees AS e1
	LEFT OUTER JOIN Employees e2 ON e1.ManagerID = e2.EmployeeID
		WHERE e2.EmployeeID IN (3,7)
			ORDER BY EmployeeID ASC
		
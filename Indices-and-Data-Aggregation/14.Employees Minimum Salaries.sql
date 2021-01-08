SELECT d.DepartmentID,MIN(e.Salary) AS [TotalSalary] FROM Departments AS d
	JOIN Employees AS e ON e.DepartmentID = d.DepartmentID
		WHERE d.DepartmentID IN(2,5,7) AND e.HireDate >'01/01/2000'
			GROUP BY d.DepartmentID
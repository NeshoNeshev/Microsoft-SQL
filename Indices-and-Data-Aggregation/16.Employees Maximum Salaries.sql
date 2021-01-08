SELECT DepartmentID, MAX(Salary) FROM Employees
	WHERE Salary < 30000 OR Salary> 70000
		GROUP BY DepartmentID
		
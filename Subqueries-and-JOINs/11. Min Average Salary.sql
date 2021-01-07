SELECT MIN([Average Salary]) FROM
	(SELECT DepartmentID,AVG(Salary) AS [Average Salary]
	 FROM Employees
	 GROUP BY DepartmentID) AS [AvgQuaryView]

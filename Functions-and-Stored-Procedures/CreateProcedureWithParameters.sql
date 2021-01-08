CREATE OR ALTER PROCEDURE sp_GetEmployeesExperience
	(@Year int = 19, @MinSalary money = 10000)
AS
	SELECT*
	FROM Employees
	WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > @Year
		AND Salary > @MinSalary
GO

EXEC sp_GetEmployeesExperience 21, 12500
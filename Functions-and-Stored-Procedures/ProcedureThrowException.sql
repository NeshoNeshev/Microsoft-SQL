CREATE OR ALTER PROCEDURE sp_GetEmployeesExperience
	(@Year int = 19, @MinSalary money = 10000)
AS
	IF (@Year < 0) THROW  50001, 'Year should not be null', 1
	SELECT*
	FROM Employees
	WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > @Year
		AND Salary > @MinSalary
GO

EXEC sp_GetEmployeesExperience -1, 12500









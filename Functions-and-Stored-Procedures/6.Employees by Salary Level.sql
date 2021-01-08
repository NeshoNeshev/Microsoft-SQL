CREATE OR ALTER PROCEDURE usp_EmployeesBySalaryLevel(@salryLevel varchar(7))
AS
	BEGIN
		SELECT FirstName, LastName 
		FROM Employees
		WHERE dbo.ufn_GetSalaryLevel(Salary) = @salryLevel
	END
GO

EXEC usp_EmployeesBySalaryLevel 'High'
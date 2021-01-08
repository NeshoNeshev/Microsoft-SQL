CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber(@Number decimal(18,4)) 
AS
	SELECT FirstName, LastName FROM Employees
		WHERE Salary >=@Number
GO







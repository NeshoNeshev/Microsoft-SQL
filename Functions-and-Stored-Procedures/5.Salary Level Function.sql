CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS VARCHAR(7)
AS
BEGIN
	DECLARE @SalaryLevel varchar(7)

    IF(@salary < 30000) set @SalaryLevel ='Low'
	ELSE IF (@salary >= 30000 AND @salary <= 50000 ) SET @SalaryLevel = 'Average'
	ELSE SET @SalaryLevel = 'High'	

	RETURN @SalaryLevel
END

GO
SELECT Salary, dbo.ufn_GetSalaryLevel(Salary) AS [Salary Level] 
	FROM Employees
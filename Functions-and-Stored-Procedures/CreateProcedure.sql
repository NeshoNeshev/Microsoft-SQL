--CREATE PROCEDURE--
CREATE PROCEDURE sp_GetEmployeesByExperience
AS
	SELECT * 
	FROM Employees 
	WHERE DATEDIFF(YEAR,HireDate, GETDATE())>19

GO

-- CALL PROCEDURE--
EXEC sp_GetEmployeesByExperience
--DROP PROCEDURE--
DROP PROCEDURE sp_GetEmployeesByExperience
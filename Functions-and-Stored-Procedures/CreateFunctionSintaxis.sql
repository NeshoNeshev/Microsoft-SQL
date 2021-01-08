CREATE OR ALTER FUNCTION udf_Pow (@Base INT, @Exp INT)
RETURNS BIGINT
AS
BEGIN
	DECLARE @Result BIGINT =1;

	WHILE @Exp >0
		BEGIN
			SET @Result = @Result * @Base;
			SET @Exp = @Exp-1;
		END
		RETURN @Result
END
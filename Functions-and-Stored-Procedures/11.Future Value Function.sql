CREATE FUNCTION ufn_CalculateFutureValue(@initialSum DECIMAL(18, 4), @yearlyRate FLOAT, @numberOfYears INT)
    RETURNS DECIMAL(18, 4)
AS
BEGIN
    DECLARE @result DECIMAL(18, 4)

    SET @result = @initialSum * (POWER((1 + @yearlyRate), @numberOfYears))

    RETURN @result
END
GO


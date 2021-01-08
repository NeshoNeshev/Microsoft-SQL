CREATE OR ALTER FUNCTION udf_Squares(@Count int)
RETURNS @squares TABLE(
 [Id] INT PRIMARY KEY IDENTITY,
 [Square] BIGINT
)
AS
BEGIN
	DECLARE @i INT = 1;
	WHILE (@I <= @Count )
	BEGIN
			INSERT INTO @squares(Square) VALUES(@i*@i)
			SET @i += 1
	END
	RETURN
END
DECLARE @CurrError int =0;

BEGIN TRY
	SELECT 0/0
END TRY
BEGIN CATCH
	SELECT
	     @@ERROR
	    ,ERROR_NUMBER() AS ErrorNumber
        ,ERROR_SEVERITY() AS ErrorSeverity
        ,ERROR_STATE() AS ErrorState
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine
        ,ERROR_MESSAGE() AS ErrorMessage;

END CATCH









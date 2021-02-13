
CREATE PROCEDURE usp_SearchForFiles
	@fileExtension nvarchar(100)
AS
BEGIN

	select A.id, A.Name, cast(A.Size as nvarchar(100)) + N'KB'
	from dbo.Files A
	where A.Name like N'%' + @fileExtension
	order by A.id, A.Name, A.Size desc 


	RETURN 0
END
GO

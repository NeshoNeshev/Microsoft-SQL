CREATE FUNCTION udf_AllUserCommits
(
	@username nvarchar(400)
)
RETURNS int
AS
BEGIN

	declare @res int

	select @res = count(*)
	from dbo.Users A
	join dbo.Commits B on A.id = B.ContributorId
	where A.Username = @username



	RETURN ISNULL(@res, 0)

END
GO


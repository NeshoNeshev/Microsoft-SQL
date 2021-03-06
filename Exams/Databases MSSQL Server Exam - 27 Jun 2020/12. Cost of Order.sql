CREATE FUNCTION udf_GetCost(@JobId int)
    RETURNS DECIMAL(15, 2)
AS
BEGIN
    DECLARE @Costs DECIMAL(15, 2)=
        (SELECT SUM(P.Price)
         FROM Parts AS P
                  JOIN OrderParts OP on P.PartId = OP.PartId
                  JOIN Orders O on OP.OrderId = O.OrderId
                  JOIN Jobs J on J.JobId = O.JobId
         WHERE J.JobId = @JobId)

    IF (@Costs IS NULL)
        RETURN 0

    RETURN @Costs
END
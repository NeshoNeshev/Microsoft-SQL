CREATE PROCEDURE usp_PlaceOrder(@JobId INT, @PartSerialNumber VARCHAR(50), @Quantity INT)
AS
    IF ((SELECT Status
         FROM Jobs
         WHERE JobId = @JobId) = 'Finished')
        THROW 50011, 'This job is not active!', 1
    IF (@Quantity <= 0)
        THROW 50012, 'Part quantity must be more than zero!', 1

DECLARE
    @job INT = (SELECT JobId
                FROM Jobs
                WHERE JobId = @JobId)
    IF (@job IS NULL)
        THROW 50013, 'Job not found!', 1

DECLARE
    @partId INT = (SELECT PartId
                   FROM Parts
                   WHERE SerialNumber = @PartSerialNumber)
    IF (@partId IS NULL)
        begin
            THROW 50014, 'Part not found!', 1
        end
    IF ((SELECT OrderId
         FROM Orders
         WHERE JobId = @JobId
           AND IssueDate IS NULL) IS NULL)
        BEGIN
            INSERT INTO Orders (JobId, IssueDate, Delivered)
            VALUES (@JobId, NULL, 0)
        END

declare
    @orderId int= (
        SELECT OrderId
        FROM Orders
        WHERE JobId = @JobId
          AND IssueDate IS NULL
    )

DECLARE
    @orderPartsQuantity INT = (SELECT Quantity
                               FROM OrderParts
                               WHERE OrderId = @orderId
                                 AND PartId = @partId)
    IF (@orderPartsQuantity IS NULL)
        BEGIN
            INSERT INTO OrderParts (OrderId, PartId, Quantity)
            VALUES (@orderId, @partId, @Quantity)
        END
    ELSE
        BEGIN
            UPDATE OrderParts
            SET Quantity += @Quantity
            WHERE OrderId = @orderId
              AND PartId = @partId
        END

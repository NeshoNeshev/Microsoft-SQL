SELECT rankQuery.Name, rankQuery.DistributorName
FROM (
SELECT c.Name, d.Name AS DistributorName,
       DENSE_RANK() OVER (PARTITION BY c.Name ORDER BY COUNT(i.Id) desc) AS RANK
FROM Countries AS c
      JOIN  Distributors D on c.Id = D.CountryId
     LEFT JOIN Ingredients I on D.Id = I.DistributorId
GROUP BY  c.Name, d.Name
) AS rankQuery
WHERE rankQuery.RANK=1
 ORDER BY rankQuery.Name, rankQuery.DistributorName
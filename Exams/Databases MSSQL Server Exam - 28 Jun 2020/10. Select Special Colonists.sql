SELECT *
    FROM (SELECT Tc.JobDuringJourney AS JobDuringJourney,
                 c.FirstName + ' ' + c.LastName AS Fullname,
                 DENSE_RANK()
                         OVER (PARTITION BY Tc.JobDuringJourney ORDER BY c.BirthDate) AS JobRank
              FROM Colonists AS c
                       JOIN TravelCards Tc
                            ON c.Id = Tc.ColonistId) AS RankQuery
    WHERE JobRank = 2
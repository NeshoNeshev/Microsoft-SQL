SELECT U.Username,AVG(F.Size) AS [Size] FROM Users AS U
JOIN Commits AS C ON U.Id = C.ContributorId
JOIN Files AS F ON F.CommitId = C.Id
GROUP BY U.Username
ORDER BY [Size]DESC,U.Username ASC
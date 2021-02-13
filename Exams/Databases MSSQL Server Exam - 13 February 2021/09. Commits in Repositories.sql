SELECT TOP(5)  R.Id,R.Name,COUNT(*) AS [Commits] FROM RepositoriesContributors AS RC
JOIN Repositories AS R ON R.Id = RC.RepositoryId
JOIN Commits AS C ON C.RepositoryId = R.Id
GROUP BY R.Id,R.Name
ORDER BY [Commits] DESC,R.Id,R.Name
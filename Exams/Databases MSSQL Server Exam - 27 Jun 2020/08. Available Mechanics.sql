SELECT CONCAT(M.FirstName,' ',M.LastName) AS[Available] FROM Mechanics AS M
LEFT JOIN Jobs AS J ON M.MechanicId = J.MechanicId
WHERE  J.Status ='Finished' OR J.JobId IS NULL
ORDER BY M.MechanicId
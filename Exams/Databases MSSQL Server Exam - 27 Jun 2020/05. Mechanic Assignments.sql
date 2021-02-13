SELECT CONCAT(M.FirstName,' ', M.LastName),J.Status, J.IssueDate  FROM Mechanics AS M
LEFT JOIN Jobs AS J ON J.MechanicId = M.MechanicId
ORDER BY M.MechanicId,J.IssueDate,J.JobId
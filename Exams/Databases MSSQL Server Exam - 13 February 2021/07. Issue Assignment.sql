SELECT I.Id, CONCAT(U.Username, ' : ', I.Title ) AS IssueAssignee FROM Users AS U
JOIN Issues AS I ON I.AssigneeId = U.Id
ORDER BY I.Id DESC, IssueAssignee ASC
select A.Id,A.Name,CONCAT(A.Size,'KB') AS Size FROM Files A
where not exists (select null FROM Files B where A.id = B.ParentID)
ORDER BY A.Id,A.Name,A.Size DESC
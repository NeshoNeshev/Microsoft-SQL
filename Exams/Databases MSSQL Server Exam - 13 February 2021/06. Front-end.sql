SELECT F.Id,F.Name,F.Size FROM Files AS F
WHERE Size >1000 AND Name LIKE '%html%'
ORDER BY Size DESC,Id ASC,Name ASC
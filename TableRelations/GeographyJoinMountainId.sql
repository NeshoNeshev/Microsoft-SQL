
SELECT M.MountainRange, P.PeakName,P.Elevation
	FROM Peaks AS P 
	JOIN Mountains AS M ON P.MountainId = M.Id
	WHERE MountainRange = 'Rila'
	ORDER BY Elevation DESC
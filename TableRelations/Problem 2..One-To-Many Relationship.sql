CREATE DATABASE TableRelations

CREATE TABLE Manifacturers
(
  ManifacturersID INT IDENTITY PRIMARY KEY NOT NULL,
  [Name] VARCHAR(30) NOT NULL,
  EstablishedOn DATE
)
CREATE TABLE Models
(
  ModelID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
  [Name] VARCHAR(20),
  ManufacturerID INT 
  CONSTRAINT FK_Models_Manifacturers
		FOREIGN KEY(ManufacturerID)
		REFERENCES Manifacturers(ManifacturersID)
)
INSERT INTO Manifacturers([Name],EstablishedOn)
	VALUES
	('BMW','07/03/1916'),
	('Tesla','01/01/2003'),
	('Lada','01/05/1966')
INSERT INTO Models([Name],ManufacturerID)
	VALUES
	('X1',1),
	('i6',1),
	('Model S',2),
	('Model X',2),
	('Model 3',2),
	('Nova',3)
SELECT * FROM Models AS m
	JOIN Manifacturers AS Ma ON m.ManufacturerID= Ma.ManifacturersID
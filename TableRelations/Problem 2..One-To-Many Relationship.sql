CREATE TABLE Manufacturers(
	ManufacturerID INT IDENTITY PRIMARY KEY NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	EstablishedOn DATE NOT NULL
)
CREATE TABLE Models(
	ModelID INT PRIMARY KEY   NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	ManufacturerID INT 
	CONSTRAINT FK_Persons_Passports
        FOREIGN KEY (ManufacturerID)
            REFERENCES Manufacturers (ManufacturerID)
)
INSERT INTO Manufacturers
	VALUES
	('BMW','07/03/1916'),
	('Tesla','01/01/2003'),
	('Lada','01/05/1966')
INSERT INTO Models
	VALUES
	(101,'X1',1),
	(102,'i6',1),
	(103,'Model S',2),
	(104,'Model X',2),
	(105,'Model 3',2),
	(106,'Nova',3)

SELECT * FROM Models AS m
	JOIN Manufacturers AS Ma ON m.ManufacturerID= Ma.ManufacturersId

CREATE TABLE People
(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	Height DECIMAL(3,2),
	[Weight] DECIMAL(5,2),
	Gender CHAR(1) NOT NULL,
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(MAX)
)

INSERT INTO People([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
	VALUES ('Angel',2000, 1.80, 78.00, 'm', '1994-09-10', 'Alabala.'),
	       ('Dimitar', 1230, 1.90, 110.00, 'm', '1973-05-10', 'Alabala.'),
	       ('Georgi', NULL, 1.76, 70.00, 'm', '1955-10-10', 'Alabala.'),
	       ('Nikolay', 1500, 1.78, 90.00, 'm', '1959-01-08', 'Alabala.'),
	       ('Todor', 1200, 1.80, 100.00, 'm', '1977-10-11', 'Alabala.');
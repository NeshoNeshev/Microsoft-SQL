CREATE DATABASE TableRelations

CREATE TABLE Passports
(
  PassportID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
  PassportNumber VARCHAR(12) NOT NULL
)
CREATE TABLE Person
(
  PersonID INT IDENTITY PRIMARY KEY NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  Salary MONEY NOT NULL,
  PassportId INT 
  CONSTRAINT FK_Person_Passport
		FOREIGN KEY(PassportID)
		REFERENCES Passports(PassportID)
)

INSERT INTO Passports(PassportNumber)
	VALUES
	('N34FG21B'),
	('K65LO4R7'),
	('ZE657QP2')

INSERT INTO Person(FirstName,Salary,PassportId)
	VALUES
		('Roberto',43300.00,102),
		('Tom',56100.00,103),
		('Yana',60200.00,101)

SELECT * FROM Person AS P
JOIN Passports AS PS ON P.PassportId = PS.PassportID
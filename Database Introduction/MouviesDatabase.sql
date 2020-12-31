CREATE DATABASE Movies

CREATE TABLE Directors
(
	Id INT IDENTITY PRIMARY KEY,
	DirectorName NVARCHAR(30) NOT NULL,
	Notes NVARCHAR(MAX)
)


CREATE TABLE Genres
(
	Id INT IDENTITY PRIMARY KEY,
	GenreName NVARCHAR(20) NOT NULL,
	Notes NVARCHAR(MAX)
)


CREATE TABLE Categories
(
	Id INT IDENTITY PRIMARY KEY,
	CategoryName NVARCHAR(20) NOT NULL,
	Notes NVARCHAR(MAX)
)


CREATE TABLE Movies
(
	Id INT IDENTITY PRIMARY KEY,
	Title VARCHAR(20) NOT NULL,
	DirectorId INT NOT NULL,
	CopyrightYear DATE NOT NULL,
	[Length] TIME NOT NULL,
	GenreId INT NOT NULL,
	CategoryId INT NOT NULL,
	Rating DECIMAL(5, 2),
	Notes NVARCHAR(MAX)

	CONSTRAINT FK_Movies_DirectorId -- ADD NEW CONSTRAINT WITH THAT NAME
		FOREIGN KEY (DirectorId) -- CREATING FOREIGN KEY FOR DirectorId COLUMN
			REFERENCES Directors (Id), -- REFERENCES TO DIRECTORS TABLE ID COLUMN

	CONSTRAINT FK_Movies_GenreId
		FOREIGN KEY (GenreId)
			REFERENCES Genres (Id),

	CONSTRAINT FK_Movies_CategoryId
		FOREIGN KEY (CategoryId)
			REFERENCES Categories (Id)
)


INSERT INTO Directors (DirectorName, Notes)
	VALUES ('Georgi1', 'TODO: .......'),
		   ('Georgi2', 'TODO: .......'),
		   ('Georgi3', 'TODO: .......'),
		   ('Georgi4', 'TODO: .......')

INSERT INTO Directors (DirectorName)
	VALUES ('Georgi5')


INSERT INTO Genres (GenreName, Notes)
	VALUES ('Comedy1', 'funny'),
		   ('Comedy2', 'funny'),
		   ('Comedy3', 'funny'),
		   ('Comedy4', 'funny')

INSERT INTO Genres (GenreName)
	VALUES ('Comedy5')


INSERT INTO Categories (CategoryName, Notes)
	VALUES ('1Above12', 'funny'),
		   ('2Above12', 'funny'),
		   ('3Above12', 'funny'),
		   ('4Above128', 'funny')

INSERT INTO Categories (CategoryName)
	VALUES ('5Above12')


INSERT INTO Movies (Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating, Notes)
	VALUES ('dadas', 1, '1990-05-10', '10:25:45', 1, 1, 105.55, 'TODO: IDK...'),
		   ('asdasda', 2, '1990-05-20', '10:25:45', 2, 2, 106.55, 'TODO: IDK...'),
		   ('sasasas', 3, '1990-05-30', '10:25:45', 3, 3, 101.55, 'TODO: IDK...'),
		   ('sddds', 4, '1990-05-20', '10:25:45', 4, 4, 102.55, 'TODO: IDK...')

INSERT INTO Movies (Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating)
	VALUES ('Supernaturale5', 5, '1990-05-10', '10:25:45', 5, 5, 103.55)


SELECT * FROM Directors
SELECT * FROM Genres
SELECT * FROM Categories
SELECT * FROM Movies
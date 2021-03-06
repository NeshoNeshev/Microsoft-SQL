CREATE DATABASE TripService
USE TripService
CREATE TABLE Cities(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(20) NOT NULL,
	CountryCode CHAR(2) NOT NULL,
) 
CREATE TABLE Hotels(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(30) NOT NULL,
	CityId INT NOT NULL  REFERENCES Cities(Id),
	EmployeeCount INT NOT NULL,
	BaseRate DECIMAL(18,2)
)
CREATE TABLE Rooms(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Price DECIMAL(18,2) NOT NULL,
	[Type] NVARCHAR(20) NOT NULL,
	Beds INT NOT NULL,
	HotelId INT NOT NULL REFERENCES Hotels(Id)
)
CREATE TABLE Trips(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	RoomId INT NOT NULL  REFERENCES Rooms(Id),
	BookDate DATETIME  NOT NULL,
	ArrivalDate DATETIME  NOT NULL,
	ReturnDate DATETIME NOT NULL,
	CancelDate DATETIME,

	CONSTRAINT bookDate_ArrivalDate CHECK (BookDate < ArrivalDate),
    CONSTRAINT arrivalDate_ReturnDate CHECK (ArrivalDate < ReturnDate)
)
CREATE TABLE Accounts(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	FirstName NVARCHAR(50) NOT NULL,
	MiddleName NVARCHAR(20),
	LastName NVARCHAR(50) NOT NULL,
	CityId INT NOT NULL  REFERENCES Cities(Id),
	BirthDate DATE NOT NULL,
	Email VARCHAR(100) UNIQUE NOT NULL
)
CREATE TABLE AccountsTrips(
	AccountId INT NOT NULL REFERENCES Accounts(Id),
	TripId INT NOT NULL REFERENCES Trips(Id),
	Luggage INT CHECK(Luggage>=0)
	PRIMARY KEY (AccountId, TripId)
)
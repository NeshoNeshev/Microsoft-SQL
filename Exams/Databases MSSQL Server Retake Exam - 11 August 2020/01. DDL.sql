CREATE DATABASE Bakery
USE Bakery
CREATE TABLE Countries 
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) UNIQUE NOT NULL
)
CREATE TABLE Customers
(
	Id INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(25) NOT NULL,
	LastName NVARCHAR(25) NOT NULL,
	Gender CHAR(1) CHECK(Gender IN ('M','F')),
	Age INT NOT NULL,
	PhoneNumber CHAR(10) CHECK(LEN(PhoneNumber)=10),
	CountryId INT NOT NULL FOREIGN KEY REFERENCES Countries(Id)
)
CREATE TABLE Products
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(25) UNIQUE NOT NULL,
	[Description] NVARCHAR(250) NOT NULL,-- MY BI NULL
	Recipe NVARCHAR(MAX) NOT NULL,
	Price DECIMAL(15,2) NOT NULL CHECK(Price >= 0)
)
CREATE TABLE Feedbacks
(
	Id INT PRIMARY KEY IDENTITY,
	[Description] NVARCHAR(255) NOT NULL,-- MY BI NULL
	Rate DECIMAL(6,2) NOT NULL CHECK(Rate BETWEEN 0 AND 10),
	ProductId INT NOT NULL FOREIGN KEY REFERENCES Products(Id),
	CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customers(Id)
)
CREATE TABLE Distributors
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(25) UNIQUE NOT NULL,
	AddressText NVARCHAR(30) NOT NULL,
	Summary NVARCHAR(200) NOT NULL,
	CountryId INT NOT NULL FOREIGN KEY REFERENCES Countries(Id)
)
CREATE TABLE Ingredients
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30) UNIQUE NOT NULL,
	[Description] NVARCHAR(200) NOT NULL,-- MY BI NULL
	OriginCountryId INT NOT NULL FOREIGN KEY REFERENCES Countries(Id),
	DistributorId INT NOT NULL FOREIGN KEY REFERENCES Distributors(Id)
)
CREATE TABLE ProductsIngredients
(
	ProductId INT REFERENCES Products(Id),
	IngredientId INT REFERENCES Ingredients(Id)
	PRIMARY KEY(ProductId,IngredientId)
)
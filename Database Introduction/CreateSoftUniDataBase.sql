CREATE DATABASE SoftUni

CREATE TABLE Towns
(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(30) NOT NULL
)

CREATE TABLE Addresses
(
	Id INT IDENTITY PRIMARY KEY,
	AddressText NVARCHAR(100) NOT NULL,
	TownId INT NOT NULL

	CONSTRAINT FK_Addresses_TownId
		FOREIGN KEY (TownId)
			REFERENCES Towns (Id)
)

CREATE TABLE Departments
(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(20) NOT NULL
)

CREATE TABLE Employees
(
	Id INT IDENTITY PRIMARY KEY,
	FirstName NVARCHAR(20) NOT NULL,
	MiddleName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	JobTitle NVARCHAR(20) NOT NULL,
	DepartmentId INT NOT NULL,
	HireDate DATE NOT NULL,
	Salary DECIMAL(7, 2) NOT NULL,
	AddressId INT,

	CONSTRAINT FK_Employees_DepartmentId
		FOREIGN KEY (DepartmentId)
			REFERENCES Departments (Id),

	CONSTRAINT FK_Employees_AddressId
		FOREIGN KEY (AddressId)
			REFERENCES Addresses (Id)
)
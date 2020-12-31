CREATE TABLE Users
(
	Id BIGINT IDENTITY(1, 1) PRIMARY KEY,
	Username VARCHAR(30) UNIQUE NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX)
	CHECK(DATALENGTH(ProfilePicture) <= 900 * 1024),
	LastLoginTime DATETIME2,
	IsDeleted BIT
)

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
	VALUES('IvanIvanov', '12345', null, '2016-10-10 13:41:42', 0),
	      ('G.Petrov', '43232', null, '2020-05-10 01:53:43', 0),
	      ('N.Dobrev', '343', null, '2019-10-10 23:42:43', 0),
	      ('I.Georgiev', '4444', null, '2018-11-07 15:51:43', 0),
	      ('B.Petrov', '65464', null, '2017-10-11 11:15:43', 1);

UPDATE Users
set [Password] = '1234567'
where Id = 3;

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
	VALUES('B.Ivanov', '1231', 1, '2018-11-11 14:41:46', 0)



INSERT INTO Users(Username, [Password], ProfilePicture, IsDeleted)
	VALUES('G.Ivanov', '343', null , 0)



INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
	VALUES('T.Georg', '432232', null, '2019-12-10 13:34:42', 0)


INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
	VALUES('Petar', '4243234', null, '2019-12-10 13:34:42', 0)

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
	VALUES('Petq', '4131323123132', null, '2019-12-10 13:34:42', 0)


SELECT * FROM Users
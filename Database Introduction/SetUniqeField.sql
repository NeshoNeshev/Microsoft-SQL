  
ALTER TABLE Users
	DROP CONSTRAINT PK_Users_CompositeIdUsername

ALTER TABLE USERS
	ADD CONSTRAINT PK_Users_Id 
		PRIMARY KEY (Id)

ALTER TABLE Users
	ADD CONSTRAINT CK_Users_UsernameLength
		CHECK(LEN(Username) >= 3)
ALTER TABLE Users
	DROP CONSTRAINT [PK__Users__3214EC0724064A46]

ALTER TABLE Users
	ADD CONSTRAINT PK_Users_CompositeIdUsername
		PRIMARY KEY (Id, Username)
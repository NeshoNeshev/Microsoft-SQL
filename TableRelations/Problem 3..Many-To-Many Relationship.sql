

CREATE TABLE Students
(
  StudentID INT IDENTITY PRIMARY KEY NOT NULL,
  [Name] VARCHAR(20) NOT NULL
);
CREATE TABLE Exams
(
   ExamsID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
   [Name] VARCHAR(20) NOT NULL
);
CREATE TABLE StudentsExams
(
   StudentID INT NOT NULL,
   ExamID INT NOT NULL
   CONSTRAINT PK_StudentID_ExamID 
		PRIMARY KEY(StudentID,ExamID),
   CONSTRAINT FK_Student 
		FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
   CONSTRAINT FK_Exam 
		FOREIGN KEY (ExamID) REFERENCES Exams(ExamsID)

)
INSERT INTO Students([Name])
	VALUES
	('Mila'),
	('Toni'),
	('Ron')
INSERT INTO Exams([Name])
	VALUES
	('SpringMVC'),
	('Neo4j'),
	('Oracle 11g')
INSERT INTO StudentsExams(StudentID,ExamID)
	VALUES
	(1,101),
	(1,102),
	(2,101),
	(3,103),
	(2,102),
	(2,103)
SELECT *
    FROM StudentsExams AS SE
             JOIN Students AS s ON s.StudentID = SE.StudentID
             JOIN Exams AS e ON e.ExamsID = SE.ExamID

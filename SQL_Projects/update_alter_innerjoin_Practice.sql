CREATE TABLE Classes (
Class_ID INT PRIMARY KEY IDENTITY (1,1),
Class_Name VARCHAR(50) 
);


CREATE TABLE Students (
	Student_ID INT PRIMARY KEY IDENTITY (1,1),
	Student_Name VARCHAR(50),
);

CREATE TABLE Instructors (
	Instructor_ID INT PRIMARY KEY IDENTITY (1,1),
	Instructor_Name VARCHAR(50),
);



ALTER TABLE Students 
ADD Instructor_ID INT;

ALTER TABLE Students
Add Class_ID INT;

ALTER TABLE Students 
	ADD FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID);
ALTER TABLE Students
	ADD FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID);


SELECT * FROM Students;
SELECT * FROM Instructors;
SELECT * FROM Classes;

INSERT INTO Classes (Class_Name)
	VALUES
	('Software Developer Boot Camp'),
	('C# Boot Camp');

INSERT INTO Students 
	(Student_Name)
	VALUES
	('Paul McCartney'),
	('Stevie Wonder'),
	('Pete Towndsend'),
	('Nancy Sinatra'),
	('Arethra Franklin'),
	('Taylor Swift');

INSERT INTO Instructors
	(Instructor_Name)
	VALUES
	('Quincy Jones'),
	('George Martin')
	;

UPDATE Students
	SET Instructor_ID = '1' WHERE Student_Name= 'Paul McCartney';
UPDATE Students
	SET Instructor_ID = '1' WHERE Student_Name= 'Stevie Wonder';
UPDATE Students
	SET Instructor_ID = '1' WHERE Student_Name= 'Pete Towndsend';
UPDATE Students
	SET Instructor_ID = '2' WHERE Student_Name= 'Nancy Sinatra';
UPDATE Students
	SET Instructor_ID = '2' WHERE Student_Name= 'Arethra Franklin';
UPDATE Students
	SET Instructor_ID ='2' WHERE Student_Name= 'Taylor Swift';


SELECT * FROM Students;

UPDATE Students
	SET Class_ID = '1' WHERE Student_Name= 'Paul McCartney';
UPDATE Students
	SET Class_ID = '1' WHERE Student_Name= 'Stevie Wonder';
UPDATE Students
	SET Class_ID = '1' WHERE Student_Name= 'Pete Towndsend';
UPDATE Students
	SET Class_ID = '2' WHERE Student_Name= 'Nancy Sinatra';
UPDATE Students
	SET Class_ID = '2' WHERE Student_Name= 'Arethra Franklin';
UPDATE Students
	SET Class_ID ='2' WHERE Student_Name= 'Taylor Swift';

SELECT* FROM Instructors

SELECT * FROM Students ORDER BY (Student_Name) ASC;


SELECT * FROM Students;
SELECT * FROM Instructors;
SELECT * FROM Classes;

SELECT Students.Student_Name 'Student', c.Class_Name 'Class', i.Instructor_Name 'Instructor' FROM Students
INNER JOIN Classes c ON c.Class_ID = Students.Class_ID
INNER JOIN Instructors i ON i.Instructor_ID = Students.Instructor_ID;


--THIS TOOK ME FOREVER BUT THAT IS OK SOMETIMES YOU JUST GOT TO KEEP GOING AT YOUR OWN PACE AND REMEMBER EXPECTATIONS
--ARE SET BY OTHERS NOT YOURSElF

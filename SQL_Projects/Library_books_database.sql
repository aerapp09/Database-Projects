USE Library

CREATE TABLE Library_Branch (
	Branch_ID INT PRIMARY KEY IDENTITY(1,1),
	Branch_Name VARCHAR(50),
	Branch_Address VARCHAR(50)
);

CREATE TABLE Borrower (
	Borrower_CardNo INT PRIMARY KEY IDENTITY(2000,1),
	Borrower_Name VARCHAR(50),
	Borrower_Address VARCHAR(50),
	Borrower_Phone VARCHAR(50)
);


CREATE TABLE Publisher (
	PublisherName VARCHAR(50) PRIMARY KEY,
	Publisher_Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

CREATE TABLE Books (
	Book_ID INT PRIMARY KEY IDENTITY(1000,1),
	Book_title VARCHAR(50),
	PublisherName VARCHAR(50) FOREIGN KEY REFERENCES Publisher(PublisherName)
);

CREATE TABLE Book_Loans (
	Book_ID INT FOREIGN KEY REFERENCES Books(Book_ID),
	Branch_ID INT FOREIGN KEY REFERENCES Library_Branch(Branch_ID),
	Card_No INT FOREIGN KEY REFERENCES Borrower(Borrower_CardNo), 
	Date_out DATE,
	Date_due DATE
);


CREATE TABLE Book_Copies (
	Book_ID INT FOREIGN KEY REFERENCES Books(Book_ID),
	Branch_ID INT FOREIGN KEY REFERENCES Library_Branch(Branch_ID),
	Number_Of_Copies INT NOT NULL
);


CREATE TABLE Book_authors (
	Book_ID INT FOREIGN KEY REFERENCES Books(Book_ID),
	AuthorName VARCHAR(50) NOT NULL,
);

SELECT * FROM Borrower

INSERT INTO Library_Branch
	(Branch_Name , Branch_Address)
	VALUES
	('Sharpstown', '482 N Harbstown St'),
	('Bakers Landing', '19 Baguette lane'),
	('Timbers Town', '4832 Saws cr'),
	('HBO branch', '542 King of the North st'),
	('Prineville', '643 Paradise lane'),
	('AMC Center', '24 Lost Mad Men rd');

INSERT INTO Borrower
	(Borrower_Name, Borrower_Address, Borrower_Phone)
	VALUES
	('Peter Dinklage', '21 Lanaster Lane', '503-291-1425'),
	('Sansa Stark', '432 Rainmaker way', '503-425-8751'),
	('Aria Stark', '432 Rainmaker way', '503-423-9636'),
	('Ned Baratheon', '8754 Peterville rd', '857-952-1421'),
	('Frank Butterfield', '433 Asa martin rd', '503-253-1245'),
	('Francis Bacon', '99 Oil painter lane', '503-523-7847'),
	('Tamsen Targaryn', '849 Ireland rd', '253-409-8032'),
	('Tom Mcarthy', '432 Morrocco rd', '253-845-1035');

INSERT INTO Publisher
	(PublisherName, Publisher_Address, Phone)
	VALUES
	('Brothers Books', '43 Typewriter lane', '740-985-9636'),
	('Pennyworth Books', '647 quarterlove rd', '503-962-6323'),
	('Alfred Publishing', '834 British rd','503-652-2256'),
	('Dime a Dozen Books', '4839 Money-pocket Drury lane','253-855-0256'),
	('10 Bees for a Quarter', '291 Kopek rd', '503-909-6060'),
	('Batmans Best', '192-1 Secret lair lane', '503-959-4021'),
	('Jokers Jest Books', '123 Why-so-serious rd','503-969-7874'),
	('Twoface Publishing', '939 Liar lane','503-120-4032'),
	('Two bats and a Comb', '390 Hair Bat blvd', '503-432-7844'),
	('Mr Freeze Publishing', '129 Coldtown rd', '503-645-2453');

INSERT INTO Books (
	Book_title, PublisherName)
	VALUES
	('The Butcher and the Black Saloon', 'Brothers Books'),
	('Angel''s Shrine', 'Brothers Books'),
	('Outside the Storm', 'Pennyworth Books'),
	('Crime of the Beheaded Inspector', 'Pennyworth Books'),
	('A Mans Man', 'Alfred Publishing'),
	('Empty Angel', 'Alfred Publishing'),
	('The Lord of the Titan', 'Dime a Dozen Books'),
	('2983 Zenith', 'Dime a Dozen Books'),
	('How to Win a Prince', '10 Bees for a Quarter'),
	('Obsidian Chaos', '10 Bees for a Quarter'),
	('Mystery of the Pale Poet', 'Batmans Best'),
	('The Bride in the Window', 'Jokers Jest Books'),
	('Crime of the Silent Juror', 'Jokers Jest Books'),
	('Primed for Crime', 'Twoface Publishing'),
	('The Twisted Maple', 'Twoface Publishing'),
	('Best Beloved', 'Two bats and a Comb'),
	('Clue of the Bloody Man', 'Two bats and a Comb'),
	('Misaligned Stars', 'Mr Freeze Publishing'),
	('Death of the Horned Shik', 'Mr Freeze Publishing');

INSERT INTO Books (
	Book_title, PublisherName)
	VALUES
	('Watcher of the Shadows', 'Batmans Best');


INSERT INTO Book_authors
	(Book_ID, AuthorName)
	VALUES
	('1000', 'Pearl Santiago'),
	('1001', 'Pearl Santiago'),
	('1002', 'Algernon Shilford'),
	('1003', 'Algernon Shilford'),
	('1004', 'Algernon Shilford'),
	('1005', 'Fiono Soto'),
	('1006', 'Gillian Abbott'),
	('1007', 'Gillian Abbott'),
	('1008', 'Hazel Wallaker'),
	('1009', 'Hazel Wallaker'),
	('1010', 'Hadley Newman'),
	('1011', 'Hadley Newman'),
	('1012', 'Hadley Newman'),
	('1013', 'Hadley Newman'),
	('1014', 'Theo Lucas'),
	('1015', 'Timothy Ratburg'),
	('1016', 'Timothy Ratburg'),
	('1017', 'Quinn Leons'),
	('1018', 'Quinn Leons'),
	('1018', 'Queenie Lateefie');


INSERT INTO Book_Copies (
	Book_ID, Branch_ID, Number_Of_Copies)
	VALUES
	('1000', 1, 5),
	('1001', 1, 3),
	('1002', 3, 2),
	('1003', 5, 4),
	('1004', 4, 7),
	('1005', 3, 5),
	('1006', 2, 5),
	('1007', 2, 3),
	('1008', 6, 2),
	('1009', 1, 8),
	('1010', 6, 5),
	('1011', 5, 2),
	('1012', 4, 3),
	('1013', 6, 2),
	('1014', 3, 4),
	('1015', 1, 3),
	('1016', 4, 4),
	('1017', 2, 8),
	('1018', 6, 3),
	('1019', 1, 4);

SELECT* FROM Book_Copies;

INSERT INTO Book_Loans (
	Book_ID, Branch_ID, Card_No, Date_out, Date_due)
	VALUES
	('1000', 1, 2001, '2023-06-14', '2023-08-14'),
	('1001', 1, 2002, '2023-07-01', '2023-09-01'),
	('1002', 3, 2001, '2023-08-09', '2023-10-09'),
	('1003', 5, 2007, '2023-05-28', '2023-07-28'),
	('1004', 4, 2007, '2023-05-28', '2023-07-28'),
	('1005', 3, 2005, '2023-07-08', '2023-09-08'),
	('1006', 2, 2004, '2023-08-04', '2023-10-04'),
	('1007', 2, 2000, '2023-06-29', '2023-08-29'),
	('1008', 6, 2003, '2023-07-08', '2023-09-08'),
	('1009', 1, 2002, '2023-07-01', '2023-09-01'),
	('1010', 6, 2006, '2023-07-08', '2023-09-08'),
	('1011', 5, 2000, '2023-06-29', '2023-08-29'),
	('1012', 4, 2004, '2023-08-04', '2023-10-04'),
	('1013', 6, 2004, '2023-08-04', '2023-10-04'),
	('1014', 3, 2002, '2023-08-09', '2023-10-09'),
	('1015', 1, 2001, '2023-06-14', '2023-08-14'),
	('1016', 4, 2000, '2023-06-29', '2023-08-29'),
	('1017', 2, 2006, '2023-07-08', '2023-09-08'),
	('1018', 6, 2002, '2023-07-01', '2023-09-01'),
	('1019', 1, 2003, '2023-07-08', '2023-09-08');


SELECT * FROM ((Book_Loans FULL OUTER JOIN Borrower ON Book_Loans.Card_No = 
Borrower.Borrower_CardNo) FULL OUTER JOIN Books ON Book_Loans.Book_ID = Books.Book_ID);
SELECT * FROM Borrower;
SELECT * FROM Book_Loans

SELECT b.Book_title, ba.AuthorName
FROM Book_authors
INNER JOIN Books b ON b.Book_ID= Book_authors.Book_ID
INNER JOIN Book_authors ba ON ba.Book_ID = b.Book_ID; 
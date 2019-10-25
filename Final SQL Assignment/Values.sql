use books_Library;

INSERT INTO Borrower 
	(CardNo, Name, Address, Phone)
	values
	('4308886204430311', 'Aiden Collins', 'Portland, OR', '(503) 258-9743'),
	('4278126905777181', 'Chloe Williams', 'Portland, OR', '(503) 264-1649'),
	('4997255895956099', 'Michael Thomas', 'Milwaukie, OR', '(503) 369-7412'),
	('4251440833846237', 'Hunter Rodriguez', 'Tigard, OR', '(503) 125-1569'),
	('4188481700436262', 'Anna Jackson', 'Happy Valley, OR', '(503) 679-8246'),
	('4668014616230575', 'Jes Jones', 'Tualatin, OR', '(503) 649-7349'),
	('4424842350934027', 'Addison Martin', 'Portland, OR', '(503) 678-5496'),
	('4964814484351580', 'Ava Parker', 'Oak Grove, OR', '(503) 357-4623')
;

INSERT INTO Library_Branch 
	(BranchName, Address)
	values
	('Sharpstown', '7660 Clarewood Dr, Portland, OR 97206'),
	('Central', '801 SW 10th Ave, Portland, OR 97205'),
	('Paul L Boley', '10015 SW Terwilliger Blvd, Portland, OR 97219'),
	('PCC Library', '12000 SW 49th Ave, Portland, OR 97219')
;

INSERT INTO Books
	(Title, PublisherName)
	values
	('The Lost Tribe', 'Amazon'),
	('It', 'Viking Press'),
	('The Shining', 'Doubleday'),
	('Harry Potter: and the Sorcerer''s Stone', 'Scholastic'),
	('Danny Calloway', 'Story Road Publishing Inc.'),
	('Enders Game', 'Starscape'),
	('Now You See Her', 'Hachette Book Group, Inc.'),
	('The Godfather', 'Fawcett Crest'),
	('Atlas Shrugged', 'Signet'),
	('Beautiful Creatures', 'Little Brown and Company'),
	('Emily the Strange', 'Chronicle Book'),
	('The Ultimate Hitchhikers Guide', 'Portland House'),
	('The Davinci Code', 'Doubleday'),
	('Best-Loved Folktales', 'Anchor Books'),
	('Twilight Eyes', 'Berkely Books'),
	('Charlie Bone and the Time Twister', 'Orchard Books'),
	('The Princess Diaries', 'Harper Trophy'),
	('Stardust', 'Perennial'),
	('Why Do Men Have Nipples?', 'Three Rivers Press'),
	('Molly Moons', 'Harper Trophy')
;

INSERT INTO Publisher
	(PublisherName, Address, Phone)
	values
	('Amazon', 'Seattle, WA','1 (888) 280-4331'),
	('Viking Press', 'New York, NY', '(212) 782-9000'),
	('Doubleday', 'New York, NY', '(212) 940-7390'),
	('Scholastic', 'New York, NY', '(212) 252-8486'),
	('Story Road Publishing Inc.', 'Los Angeles, CA', '(323) 587-2678'),
	('Starscape', 'Portland, OR', '(503) 645-8912'),
	('Hachette Book Group, Inc.', 'New York City, NY', '(212) 687-649'),
	('Fawcett Crest', 'New York City, NY', '(212) 738-0124'),
	('Signet', 'New York City, NY', '(917) 534-3698'),
	('Little Brown and Company', 'Boston, MA', '(617) 415-2356'),
	('Chronicle Book', 'San Francisco, CA', '1 (800) 759-0190'),
	('Portland House', 'Portland, OR', '(503) 345-4567'),
	('Anchor Books', 'New York City, NY', '(917) 497-3729'),
	('Berkely Books', 'New York City, NY', '(212) 819-3468'),
	('Orchard Books', 'Chicago, IL', '(312) 456-7894'),
	('Harper Trophy', 'New York City, NY', '(212) 456-1372'),
	('Perennial', 'New York City, NY', '(917) 497-3148'),
	('Three Rivers Press', 'New York City, NY', '(212) 159-7538')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Copies)
	values
	-- Branch 1
	(1, 1, 5),
	(2, 1, 5),
	(3, 1, 5),
	(4, 1, 5),
	(5, 1, 5),
	(6, 1, 5),
	(7, 1, 5),
	(8, 1, 5),
	(9, 1, 5),
	(10, 1, 5),

	-- Branch 2
	(2, 2, 5),
	(3, 2, 5),
	(8, 2, 5),
	(9, 2, 5),
	(10, 2, 5),
	(6, 2, 5),
	(15, 2, 5),
	(18, 2, 5),
	(9, 2, 5),
	(12, 2, 5),


	-- Branch 3
	(11, 3, 5),
	(12, 3, 5),
	(13, 3, 5),
	(14, 3, 5),
	(15, 3, 5),
	(16, 3, 5),
	(17, 3, 5),
	(18, 3, 5),
	(19, 3, 5),
	(20, 3, 5),

	-- Branch 4
	(5, 4, 5),
	(8, 4, 5),
	(7, 4, 5),
	(3, 4, 5),
	(2, 4, 5),
	(16, 4, 5),
	(17, 4, 5),
	(18, 4, 5),
	(19, 4, 5),
	(20, 4, 5)
;

INSERT INTO Book_Authors
	(BookID, AuthorName)
	values
	(1, 'Mark Lee'),
	(2, 'Stephen King'),
	(3, 'Stephen King'),
	(4, 'J.K. Rowling'),
	(5, 'Z.C. Bolger'),
	(6, 'Orson Scott Card'),
	(7, 'James Patterson'),
	(8, 'Mario Puzo'),
	(9, 'Ayn Rand'),
	(10, 'Kami Garcia & Margaret Stohl'),
	(11, 'Cosmic Debris'),
	(12, 'Douglas Adams'),
	(13, 'Dan Brown'),
	(14, 'Joanna Cole'),
	(15, 'Dean Koontz'),
	(16, 'Jenny Nimmo'),
	(17, 'Meg Cabot'),
	(18, 'Neil Gaiman'),
	(19, 'Mark Leyner & Billy Goldberg'),
	(20, 'Georgia Byng')
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	values
	(1, 1, '4188481700436262', '9/24/19', '10/24/19'),
	(2, 1, '4188481700436262', '9/24/19', '10/24/19'),
	(3, 1, '4308886204430311', '10/5/19', '11/5/19'),
	(4, 1, '4668014616230575', '10/1/19', '11/1/19'),
	(5, 1, '4997255895956099', '9/10/19', '10/10/19'),
	(6, 1, '4188481700436262', '10/24/19', '11/24/19'),
	(7, 1, '4964814484351580', '10/16/19', '11/16/19'),
	(7, 1, '4278126905777181', '9/24/19', '10/24/19'),
	(9, 1, '4251440833846237', '9/23/19', '10/23/19'),
	(10, 1, '4424842350934027', '10/1/19', '11/1/19'),

	(2, 2, '4308886204430311', '9/24/19', '10/24/19'),
	(3, 2, '4668014616230575', '10/1/19', '11/1/19'),
	(8, 2, '4251440833846237', '9/23/19', '10/23/19'),
	(9, 2, '4997255895956099', '9/10/19', '10/10/19'),
	(10, 2, '4964814484351580', '10/16/19', '11/16/19'),
	(6, 2, '4251440833846237', '8/25/19', '9/25/19'),
	(15, 2, '4278126905777181', '9/15/19', '10/15/19'),
	(18, 2, '4668014616230575', '10/11/19', '11/11/19'),
	(9, 2, '4251440833846237', '9/23/19', '10/23/19'),
	(12, 2, '4308886204430311', '10/1/19', '11/1/19'),

	(11, 3, '4278126905777181', '10/1/19', '11/1/19'),
	(12, 3, '4668014616230575', '10/25/19', '11/25/19'),
	(13, 3, '4278126905777181', '10/24/19', '11/24/19'),
	(14, 3, '4997255895956099', '9/24/19', '10/24/19'),
	(15, 3, '4668014616230575', '9/1/19', '10/1/19'),
	(16, 3, '4188481700436262', '8/19/19', '9/19/19'),
	(17, 3, '4278126905777181', '10/20/19', '11/20/19'),
	(18, 3, '4188481700436262', '10/17/19', '11/17/19'),
	(19, 3, '4251440833846237', '10/4/19', '11/4/19'),
	(20, 3, '4964814484351580', '9/18/19', '10/18/19'),

	(5, 4, '4997255895956099', '10/18/19', '11/18/19'),
	(8, 4, '4668014616230575', '9/24/19', '10/24/19'),
	(7, 4, '4278126905777181','9/18/19', '10/18/19'),
	(3, 4, '4668014616230575', '10/17/19', '11/17/19'),
	(2, 4, '4188481700436262', '10/11/19', '11/11/19'),
	(16, 4, '4964814484351580', '10/1/19', '11/1/19'),
	(17, 4, '4308886204430311', '8/19/19', '9/19/19'),
	(18, 4, '4278126905777181', '10/25/19', '11/25/19'),
	(19, 4, '4668014616230575', '10/16/19', '11/16/19'),
	(20, 4, '4308886204430311', '9/24/19', '10/24/19'),

	(5, 4, '4997255895956099', '10/18/19', '11/18/19'),
	(8, 1, '4668014616230575', '9/24/19', '10/24/19'),
	(7, 1, '4278126905777181','9/18/19', '10/18/19'),
	(3, 4, '4668014616230575', '10/17/19', '11/17/19'),
	(2, 1, '4188481700436262', '10/11/19', '11/11/19'),
	(16, 3, '4964814484351580', '10/1/19', '11/1/19'),
	(17, 4, '4308886204430311', '8/19/19', '9/19/19'),
	(18, 2, '4278126905777181', '10/25/19', '11/25/19'),
	(19, 4, '4668014616230575', '10/16/19', '11/16/19'),
	(20, 3, '4308886204430311', '9/24/19', '10/24/19')
;
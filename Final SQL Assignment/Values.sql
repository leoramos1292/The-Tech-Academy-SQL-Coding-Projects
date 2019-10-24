use books_Library;

INSERT INTO Library_Branch 
	(BranchName, Address)
	values
	('Sharpstown', '7660 Clarewood Dr, Portland, OR 97206'),
	('Central', '801 SW 10th Ave, Portland, OR 97205'),
	('Paul L Boley', '10015 SW Terwilliger Blvd, Portland, OR 97219'),
	('PCC Library', '12000 SW 49th Ave, Portland, OR 97219')
;

INSERT INTO Library_Branch
		(BranchName, Address)
	values


select * from Library_Branch;

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
	('Emily the Strange', 'Chronicle Books'),
	('The Ultimate Hitchhikers Guide', 'Portland House'),
	('The Davinci Code', 'Doubleday'),
	('best-Loved Folktales', 'Anchor Books'),
	('Twilight Eyes', 'Berkely Books'),
	('Charlie Bone ans the Time Twister', 'Orchard Books'),
	('The Princess Diaries', 'Harper Trophy'),
	('Stardust', 'Perennial'),
	('Why Do Men Have Nipples?', 'Three Rivers Press'),
	('Molly Moons', 'Harper Trophy')
;

select * from books;

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

select * from publisher;


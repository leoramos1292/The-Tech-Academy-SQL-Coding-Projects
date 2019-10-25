use books_Library;

--STORED PROCEDURES THAT WILL QUERY FOR EACH OF THE FOLLOWING QUESTIONS:

--  How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?

select Books.Title, Book_Copies.Number_Of_Copies, Library_Branch.BranchName
	from Books
	iNNER jOIN Book_Copies ON Book_Copies.BookID = Books.BookID
	INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BranchID
	where Books.Title = 'The Lost Tribe'
	;

--	How many copies of the book titled "The Lost Tribe" are owned by each library branch?

select a1.Number_Of_Copies, a2.Title, a3.BranchName
	from Book_Copies a1
	INNER JOIN Books a2 ON a2.BookID = a1.BookID
	INNER JOIN Library_Branch A3 ON a3.BranchID = a1.BranchID
	where a2.Title = 'The Lost Tribe'
;

-- Retrieve the names of all borrowers who do not have any books checked out.

Select a1.Name
	from Borrower a1
	FULL OUTER JOIN Book_Loans a2 ON a2.CardNo = a1.CardNo
	where a2.CardNo IS NULL 
;

-- For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.

select a2.BranchName, a3.Title, a4.Address, a4.Name
	from Book_Loans a1
	INNER JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	INNER JOIN Books a3 ON a3.BookID = a1.BookID
	INNER JOIN Borrower a4 ON a4.CardNo = a1.CardNo
	where a2.BranchName = 'Sharpstown' AND DateDue = '10/24/19'
;

--  For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
Select count(BookID), a2.BranchName
	from Book_Loans a1
	Inner JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	Group by BranchName;

--Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.

Select a1.Name, a1.Address, count(a2.CardNo)
	from Borrower a1
	INNER JOIN Book_Loans a2 ON a2.CardNo = a1.CardNo
	group by a1.name, a1.Address, a2.CardNo
	having count(a2.CardNo)>5
;

--For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".

select a1.title, a2.AuthorName, a3.BranchName, a4.Number_Of_Copies
	from Books a1
	INNER JOIN Book_Authors a2 ON a2.BookID = a1.BookID
	INNER JOIN Book_Copies a4 ON a4.BookID = a1.BookID
	INNER JOIN Library_Branch a3 ON a3.BranchID = a4.BranchID
	where a3.BranchName = 'Central' AND a2.AuthorName = 'Stephen King'
;
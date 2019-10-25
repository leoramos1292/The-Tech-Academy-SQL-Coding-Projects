use books_Library;

--STORED PROCEDURES THAT WILL QUERY FOR EACH OF THE FOLLOWING QUESTIONS:

--  How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
select Number_Of_Copies from Book_Copies where BookID = 1 and BranchID = 1
;

--	How many copies of the book titled "The Lost Tribe" are owned by each library branch?
DECLARE @bookCount INT

set @bookCount = (select sum(Number_Of_Copies) from Book_Copies where BookID = 1);
Print
	('The total amount of copies of the Novel "The Lost Tribe" by Mark Lee in all of our libararies is: ' +
	CONVERT(nvarchar(50),@bookCount) + '.'
	);

-- Retrieve the names of all borrowers who do not have any books checked out.

-- For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.

select a1.BranchID, a2.Title, a3.Address, a3.Name
	from Book_Loans a1
	INNER JOIN Books a2 ON a2.BookID = a1.BookID
	INNER JOIN Borrower a3 ON a3.CardNo = a1.CardNo
	where a1.BranchID = 1 AND DateDue = '10/24/19'
;

--  For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
Select count(BookID), a2.BranchName
	from Book_Loans a1
	Inner JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	where a1.BranchID = 1
	Group by BranchName;

Select count(BookID), a2.BranchName
	from Book_Loans a1
	Inner JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	where a1.BranchID = 2
	Group by BranchName;

Select count(BookID), a2.BranchName
	from Book_Loans a1
	Inner JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	where a1.BranchID = 3
	Group by BranchName;

Select count(BookID), a2.BranchName
	from Book_Loans a1
	Inner JOIN Library_Branch a2 ON a2.BranchID = a1.BranchID
	where a1.BranchID = 4
	Group by BranchName;

--Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.

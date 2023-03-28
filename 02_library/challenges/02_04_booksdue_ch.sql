-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT l.DueDate,b.Title,p.FirstName,p.Email
From Loans l, Books b, Patrons p
Where l.BookID = b.BookID
And l.PatronID = p.PatronID
And l.DueDate = '2022-07-13'
And l.ReturnedDate is Null
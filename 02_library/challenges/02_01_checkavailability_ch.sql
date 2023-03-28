-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

Select Count(*) From Books Where Title = 'Dracula'
And BookID not in (
SELECT l.BookID
From Loans l, Books B
Where l.BookID = b.BookID
And b.Title = 'Dracula'
And ReturnedDate is Null
Group By l.BookID)

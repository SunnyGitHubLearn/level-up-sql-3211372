-- Prepare a report of the library patrons
-- who have checked out the fewest books.

Select c.CheckedOutCount,p.*
From Patrons p,
(
SELECT PatronID, Count(*) 'CheckedOutCount'
From Loans
Where ReturnedDate is Not NULL
Group BY PatronID
)c
Where p.PatronID = c.PatronID
Order By 1 
Limit 11
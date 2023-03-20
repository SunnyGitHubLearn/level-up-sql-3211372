-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

Select * From Reservations

SELECT *
From Reservations r, Customers c
Where r.CustomerID = c.CustomerID
And r.PartySize = 4
And c.LastName Like 'Ste%'
And  strftime('%m-%d',r.Date) = strftime('%m-%d','2023-06-14')

--Select strftime('%m-%d','2018-07-14')
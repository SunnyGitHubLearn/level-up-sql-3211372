-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

Select * From Customers Where Email = 'atapley2j@kinetecoinc.com'

Insert Into AnniversaryAttendees
Select CustomerID,3
From Customers Where Email = 'atapley2j@kinetecoinc.com'

Select * From AnniversaryAttendees
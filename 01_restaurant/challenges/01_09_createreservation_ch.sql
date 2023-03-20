-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

Select * From Customers 
Where FirstName = 'Sam' And LastName = 'McAdams' 

Insert Into Customers(FirstName,LastName,Email)
Select 'Sam','McAdams' ,'smac@kinetecoinc.com'

Insert Into Reservations (CustomerID,PartySize,Date)
Select CustomerID,5,'2022-08-12 18:00:00'
From Customers
Where FirstName = 'Sam' And LastName = 'McAdams' 

Select r.*
From Reservations r, Customers c
Where r.CustomerID = c.CustomerID
And FirstName = 'Sam' And LastName = 'McAdams' 
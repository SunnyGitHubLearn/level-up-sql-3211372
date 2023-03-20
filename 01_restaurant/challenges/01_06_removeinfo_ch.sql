-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

Select r.* 
From Reservations r, Customers c
Where r.CustomerID = c.CustomerID
And c.FirstName = 'Norby'
And Date('2022-07-24','weekday 5') = Date(Date);

--Update Reservations r
--Set Date = Null
--From Reservations r, Customers c
--Where r.CustomerID = c.CustomerID
--And c.FirstName = 'Norby'
--And Date('2022-07-24','weekday 5') = Date(r.Date);

Select *
From Reservations
Where ReservationID =  (Select r.ReservationID From Reservations r, Customers c
                        Where r.CustomerID = c.CustomerID
                        And c.FirstName = 'Norby'
                        And Date('2022-07-24','weekday 5') = Date(r.Date)
                        );


Update Reservations
Set Date = Null
Where ReservationID =  (Select r.ReservationID From Reservations r, Customers c
                        Where r.CustomerID = c.CustomerID
                        And c.FirstName = 'Norby'
                        And Date('2022-07-24','weekday 5') = Date(r.Date)
                        );



--Select strftime('%w','2022-07-24')--, date('2022-7-24',)
--Select Date('2022-07-24','weekday 5')
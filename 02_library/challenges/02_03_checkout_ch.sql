-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

Select * From Loans Order By LoanID Desc Limit 5

Insert Into Loans(BookID,PatronID,LoanDate,DueDate,ReturnedDate)
SELECT b.BookID,p.PatronID,'2022-08-25','2022-09-08','2022-09-08'
From Books b, Patrons p
Where b.Barcode in (2855934983,4043822646)
And p.Email = 'jvaan@wisdompets.com'
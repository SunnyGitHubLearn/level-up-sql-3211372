-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

Select LoanID,ReturnedDate
From Books b, Loans l
Where b.BookID = l.BookID
And b.barcode in (6435968624,5677520613,8730298424)
And l.ReturnedDate is Null

Update Loans
Set ReturnedDate = '2022-07-05'
Where LoanID in (Select LoanID
From Books b, Loans l
Where b.BookID = l.BookID
And b.barcode in (6435968624,5677520613,8730298424)
And l.ReturnedDate is Null)
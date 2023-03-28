-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

Select *
From Books
Where Published between 1890 and 1899
And BookID not in (Select BookID from Loans Where ReturnedDate is Null)
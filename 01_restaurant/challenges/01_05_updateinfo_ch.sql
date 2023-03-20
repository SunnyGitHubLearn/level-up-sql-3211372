-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

Select * From Customers Where Address = '27170 6th Ave.' 
And FirstName = 'Taylor'

Update Customers
Set Address  = '74 Pine St.',
    City = 'New York',
    State = 'NY'
Where Address = '27170 6th Ave.' 
And FirstName = 'Taylor';
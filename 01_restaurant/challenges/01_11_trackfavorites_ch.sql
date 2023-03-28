-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

Select *
From Customers c, Dishes d 
Where c.FavoriteDish = d.DishID
And FirstName = 'Cleo' And LastName = 'Goldwater'

(Select DishID From Dishes Where Name = 'Quinoa Salmon Salad')

Update Customers
Set FavoriteDish = (Select DishID From Dishes Where Name = 'Quinoa Salmon Salad')
Where FirstName = 'Cleo' And LastName = 'Goldwater'
-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

Select * From Customers Where FirstName = 'Loretta' And LastName = 'Hundey' 

Select *
From Dishes Where Name in ('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie')

Insert Into Orders(CustomerID,OrderDate)
Select CustomerID,'2022-09-20 14:00:00'
From Customers Where FirstName = 'Loretta' And LastName = 'Hundey'

Insert Into OrdersDishes(OrderID,DishID)
Select o.OrderID,d.DishID
From Orders o, Customers c, Dishes d
Where o.CustomerID = c.CustomerID
And FirstName = 'Loretta' And LastName = 'Hundey'
And OrderDate = '2022-09-20 14:00:00'
And d.Name in ('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie')

Select Sum(d.Price) as TotalCost
From Orders o, Customers c, Dishes d, OrdersDishes od
Where o.CustomerID = c.CustomerID
And FirstName = 'Loretta' And LastName = 'Hundey'
And OrderDate = '2022-09-20 14:00:00'
And d.Name in ('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie')
And o.OrderID = od.OrderID
And d.DishID = od.DishID
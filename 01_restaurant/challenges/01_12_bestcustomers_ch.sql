-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

Select Max(c.FirstName) FirstName,Max(c.LastName) LastName,Max(c.email) email,Count(*) NoOfOrders
From Orders o,Customers c
Where o.CustomerID = c.CustomerID
Group By o.CustomerID
Order By NoOfOrders Desc
Limit 15;
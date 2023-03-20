-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT * From Dishes Order By Price;
Select * From Dishes Where Type in ('Appetizer','Beverage') Order By Type;
Select * From Dishes Where Type not in ('Beverage') Order By Type;
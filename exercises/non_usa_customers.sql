SELECT CustomerId, FirstName || " " || LastName AS `Name`, Country 
FROM Customer
WHERE Country != 'USA'
SELECT 
    CustomerId, 
    FirstName || " " || LastName AS `Name`
FROM Customer
WHERE Country = 'Brazil'

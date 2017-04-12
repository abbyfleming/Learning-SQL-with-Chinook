SELECT 
	Employee.FirstName || " " || Employee.LastName AS `Employee`,
	COUNT(Customer.CustomerId) AS `Customers`
FROM Customer
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId
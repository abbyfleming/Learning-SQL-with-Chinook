SELECT
	Employee.FirstName || " " || Employee.LastName AS `Sales Rep`,
	ROUND(SUM(Invoice.Total), 2) AS `Total Sales`
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId
SELECT 
	Customer.FirstName || " " || Customer.LastName AS `Customer`,
	Invoice.Total,
	Invoice.BillingCountry,
	Employee.FirstName || " " || Employee.LastName AS `Sales Rep`
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId	
ORDER BY Invoice.InvoiceId

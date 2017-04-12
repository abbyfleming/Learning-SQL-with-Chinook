SELECT 
	FirstName || " " || LastName AS `Name`,
	MAX(Sales) AS `2009 Top Sales`
FROM
	(
	SELECT SUM(Total) AS Sales, Employee.FirstName, Employee.LastName
	FROM Invoice, Customer, Employee
	WHERE Invoice.CustomerId = Customer.CustomerId
	AND Customer.SupportRepId = Employee.EmployeeId
	AND Invoice.InvoiceDate between '2009-01-01' AND '2009-12-31'
	GROUP BY Employee.EmployeeId
	)

/* 
The subquery will run first, then the select statement. 
SELECT SUM(Total) AS Sales --> MAX(Sales)
*/

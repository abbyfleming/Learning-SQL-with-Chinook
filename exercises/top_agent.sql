SELECT 
	FirstName || " " || LastName AS `Name`,
	MAX(Sales) AS `Top Sales`
FROM
	(
	SELECT ROUND(SUM(Total),2) AS Sales, Employee.FirstName, Employee.LastName
	FROM Invoice, Customer, Employee
	WHERE Invoice.CustomerId = Customer.CustomerId
	AND Customer.SupportRepId = Employee.EmployeeId
	GROUP BY Employee.EmployeeId
	)

/* 
The subquery will run first, then the select statement. 
SELECT SUM(Total) AS Sales --> MAX(Sales)
*/

SELECT 
	Invoice.InvoiceId, 
	Customer.FirstName || " " || Customer.LastName AS `Name`, 
	Invoice.InvoiceDate, 
	Invoice.BillingCountry
FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
WHERE BillingCountry = 'Brazil'

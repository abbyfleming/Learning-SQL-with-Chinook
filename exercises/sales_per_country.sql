SELECT 
	BillingCountry AS `Country`,
	SUM(Total) AS `Total`
FROM Invoice
GROUP BY BillingCountry
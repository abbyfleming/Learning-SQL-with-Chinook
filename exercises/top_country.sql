SELECT
	BillingCountry AS `Country`,
	MAX(TopCountry) AS `Sales`
FROM 
	(
	SELECT 
		BillingCountry,
		SUM(Total) AS TopCountry
	FROM Invoice
	GROUP BY BillingCountry
	)
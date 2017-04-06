SELECT
	Invoice.BillingCountry AS `Billing Country`,
	COUNT(Invoice.BillingCountry) AS `Number of Invoices`
FROM Invoice
GROUP BY Invoice.BillingCountry
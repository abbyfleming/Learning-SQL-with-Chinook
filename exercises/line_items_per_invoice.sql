SELECT
	InvoiceLine.InvoiceId AS `Invoice Number`,
	COUNT(InvoiceLine.InvoiceLineId) AS `Line Items Per Invoice`
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId
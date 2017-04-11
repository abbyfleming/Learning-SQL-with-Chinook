SELECT
	Invoice.InvoiceId,
	COUNT(InvoiceLine.InvoiceLineId) AS `Line Items`
FROM Invoice
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY InvoiceLine.InvoiceId
SELECT * 
FROM (SELECT COUNT(Invoice.InvoiceDate) AS `2009 Invoices`
	FROM Invoice
	WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2010-01-01 00:00:00' ),
	(SELECT COUNT(Invoice.InvoiceDate) AS `2011 Invoices`
	FROM Invoice
	WHERE InvoiceDate BETWEEN '2011-01-01 00:00:00' AND '2012-01-01 00:00:00' )

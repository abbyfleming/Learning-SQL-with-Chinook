SELECT
	Name,
	MAX(Tracks) AS `Sold`
FROM
	(
	SELECT 
	COUNT(InvoiceLine.TrackId) AS Tracks,
	Track.Name
	FROM InvoiceLine
	JOIN Track ON InvoiceLine.TrackId = Track.TrackId
	JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
	AND Invoice.InvoiceDate between '2013-01-01' AND '2013-12-31'
	GROUP BY InvoiceLine.TrackId
	)

/* There's 442 purchases with only 1 sale */
SELECT
	Name,
	Tracks
FROM
	(
	SELECT 
		COUNT(InvoiceLine.TrackId) AS Tracks,
		Track.Name
	FROM InvoiceLine
	JOIN Track ON InvoiceLine.TrackId = Track.TrackId
	JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
	GROUP BY InvoiceLine.TrackId
	ORDER BY Tracks DESC
	LIMIT 5
	)
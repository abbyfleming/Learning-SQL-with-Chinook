SELECT 
	InvoiceLine.InvoiceId,
	Track.Name AS `Track Name`
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
SELECT 
	Name,
	MAX(Type) AS `Purchased `
FROM 
	(
	SELECT
	COUNT(Track.MediaTypeId) AS `Type`, 
	MediaType.Name
	FROM InvoiceLine
	JOIN Track ON InvoiceLine.TrackId = Track.TrackId
	JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
	GROUP BY Track.MediaTypeId
	)

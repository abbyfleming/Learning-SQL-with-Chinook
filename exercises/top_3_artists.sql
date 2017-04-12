SELECT
	Artist.Name,
	COUNT(InvoiceLine.TrackId) AS `Tracks Sold`
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist on Album.ArtistId = Artist.ArtistId
GROUP BY Artist.ArtistId
ORDER BY `Tracks Sold` DESC
LIMIT 3
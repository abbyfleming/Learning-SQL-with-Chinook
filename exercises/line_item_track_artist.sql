SELECT 
	InvoiceLine.InvoiceId,
	Artist.Name AS `Artist`,
	Track.Name AS `Track Name`
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
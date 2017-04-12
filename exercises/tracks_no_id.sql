SELECT 
	Track.Name,
	Album.Title,
	Genre.Name
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Genre ON Track.GenreId = Genre.GenreId
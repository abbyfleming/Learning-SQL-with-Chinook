SELECT 
	Playlist.Name AS `Cateogry`,
	COUNT(PlaylistTrack.PlaylistId) AS `Tracks in Playlist`
FROM Playlist
JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY PlaylistTrack.PlaylistId
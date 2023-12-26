SELECT albums.AlbumId, artists.ArtistId, albums.Title FROM albums
	INNER JOIN tracks ON tracks.AlbumId = albums.AlbumId
	INNER JOIN artists ON artists.ArtistId = albums.ArtistId
    WHERE albums.Title IN (SELECT genres.Name FROM genres)
    GROUP BY albums.AlbumId;
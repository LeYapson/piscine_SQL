DELETE FROM tracks
	WHERE tracks.AlbumId IN (SELECT albums.AlbumId FROM albums WHERE albums.Title = 'Facelift');
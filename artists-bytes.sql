SELECT
    artists.Name AS ArtistName,
    albums.Title AS AlbumName,
    tracks.Name AS TrackName,
    ROUND((tracks.Bytes / 1000000.0), 2) || ' MB' AS MegaBytes
FROM
    tracks
JOIN
    albums ON tracks.AlbumId = albums.AlbumId
JOIN
    artists ON albums.ArtistId = artists.ArtistId
WHERE
    albums.Title = 'American Idiot';
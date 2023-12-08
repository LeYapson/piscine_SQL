SELECT
    albums.Title AS AlbumName,
    tracks.Name AS TrackName,
    tracks.Milliseconds
FROM
    albums
JOIN
    tracks ON albums.AlbumId = tracks.AlbumId
ORDER BY
    tracks.Milliseconds ASC
LIMIT 50;
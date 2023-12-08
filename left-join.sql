SELECT
    artists.Name,
    albums.Title AS 'AlbumTitle'
FROM
    artists
LEFT JOIN albums ON artists.ArtistId = albums.AlbumId
LIMIT 100;
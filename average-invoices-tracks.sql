SELECT
    i.InvoiceId
    AVG(invoice_items.UnitPrice) AS AverageCostBySongs,
    SUM(tracks.Milliseconds) AS TotalLengthOfSongs,
    SUM(invoice_items.UnitPrice) / (SUM(tracks.Milliseconds) / 1000.0)
FROM
    invoices i
JOIN invoice_items ON i.InvoiceId = invoice_items.InvoiceId
JOIN (
    SELECT
        tracks.TrackId,
        tracks.Milliseconds
    FROM
        tracks
    JOIN
        genres ON tracks.GenreId = genres.GenreId
    JOIN (
        SELECT
            tracks.GenreId,
            RANK() OVER (PARTITION BY genres.GenreId ORDER BY tracks.Milliseconds DESC) AS SongRank
        FROM
            tracks
        JOIN
            genres ON tracks.GenreId = genres.GenreId
    ) ranked_songs ON tracks.GenreId = ranked_songs.GenreId AND ranked_songs.SongRank = 1
) longest_songs ON invoice_items.TrackId = longest_songs.TrackId
GROUP BY
    invoices.InvoiceId;

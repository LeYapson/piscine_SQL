SELECT
    *
FROM
    tracks
WHERE
    GenreId IN (SELECT GenreId FROM genres WHERE GenreName = tracks.Name);
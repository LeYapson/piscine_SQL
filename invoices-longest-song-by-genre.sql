SELECT DISTINCT
    i.InvoiceId
FROM invoices i
JOIN invoice_items it ON i.InvoiceId = it.invoiceId
WHERE it.TrackId IN(
SELECT
    t.TrackId
FROM songs t
JOIN genres g ON t.GenreId = g.GenreId
GROUP BY g.GenreId
HAVING max(t.Milliseconds))
ORDER BY i.InvoiceId;
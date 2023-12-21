SELECT
    tracks.Name AS Name
FROM
    invoice_items
JOIN
    tracks ON invoice_items.TrackId = tracks.TrackId
WHERE
    InvoiceId = (SELECT MAX(InvoiceId) FROM invoices);
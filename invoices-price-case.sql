SELECT
    InvoiceId,
    TotalAmount,
    CASE
        WHEN TotalAmount < 5 THEN 'Price lower than 5$'
        WHEN TotalAmount < 10 THEN 'Price lower than 10$'
        ELSE 'Price greater than 10$'
    END AS PriceCategory
FROM
    invoices
LIMIT 100;
-- Left join between customers and invoices tables to list customer information and invoice total prices
SELECT
    customers.FirstName,
    customers.LastName,
    customers.Company,
    COALESCE(SUM(invoices.Total), 0) AS InvoiceTotalPrice
FROM
    customers
LEFT JOIN
    invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY
    customers.CustomerId;

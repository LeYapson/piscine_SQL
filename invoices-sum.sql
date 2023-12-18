-- Get invoices information for the client Tim Goyer and calculate the total sum
SELECT
    customers.FirstName,
    customers.LastName,
    invoices.InvoiceId,
    invoices.InvoiceDate,
    SUM(invoices.TotalAmount) AS AllInvoicesTotalPrice
FROM
    customers
JOIN
    invoices ON customers.CustomerId = invoices.CustomerId
WHERE
    customers.FirstName = 'Tim' AND customers.LastName = 'Goyer'
GROUP BY
    customers.FirstName, customers.LastName, invoices.InvoiceId, invoices.InvoiceDate;

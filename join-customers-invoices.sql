SELECT
    customers.FirstName,
    customers.LastName,
    customers.Company,
    invoices.Total AS InvoiceTotalPrice
FROM
    customers
INNER JOIN
    invoices
WHERE customers.CustomerId = invoices.CustomerId AND customers.Company IS NOT NULL ;

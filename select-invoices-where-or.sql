SELECT InvoiceId, SUM(Total) AS Total
FROM invoices
WHERE BillingCity IN ('Paris', 'London')
GROUP BY InvoiceId;

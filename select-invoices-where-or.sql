-- Retrieve InvoiceId and total prices for invoices with destination city Paris or London
SELECT InvoiceId, SUM(Total) AS Total
FROM invoices
WHERE BillingCity IN ('Paris', 'London')
GROUP BY InvoiceId;

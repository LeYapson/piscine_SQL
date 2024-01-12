SELECT
    Country,
    COUNT(*) AS Total,
    SUM(EmployeesCount) AS Employees,
    SUM(CustomersCount) AS Customers,
    SUM(InvoicesCount) AS Invoices
FROM (
    SELECT Country, 1 AS EmployeesCount, 0 AS CustomersCount, 0 AS InvoicesCount FROM Employees
    UNION ALL
    SELECT Country, 0, 1, 0 FROM Customers
    UNION ALL
    SELECT BillingCountry AS Country, 0, 0, 1 FROM Invoices
) AS CombinedData
GROUP BY Country
ORDER BY Country;
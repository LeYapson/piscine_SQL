-- Count the number of customers who have a Company
SELECT
    COUNT(*) NbCompanies
FROM
    customers
WHERE
    Company IS NOT NULL;

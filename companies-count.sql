-- Count the number of customers who have a Company
SELECT
    COUNT(DISTINCT Company) AS NbCompanies
FROM
    customers
WHERE
    Company IS NOT NULL;

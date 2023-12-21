UPDATE invoices
    SET Total = Total +
    CASE
        WHEN invoices.BillingCountry = 'France' THEN 3
        WHEN invoices.BillingCountry = 'USA' THEN 5
        ELSE 1
    END
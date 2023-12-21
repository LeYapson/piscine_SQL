SELECT
    FirstName,
    LastName,
    Country,
    CASE
        WHEN Country IN ('USA', 'Canada', 'Mexico','Brazil','Chile','Argentina') THEN 'America'
        WHEN Country IN ('China', 'Japan', 'India') THEN 'Asia'
        WHEN Country IN ('France', 'Germany', 'Italy','Norway','Poland','Netherlands','Czech Republic','Spain','Sweden','Austria','Belgium','United Kingdom','Ireland','Denmark','Hungary','Finland','Portugal') THEN 'Europe'
        WHEN Country IN ('Australia', 'New Zealand') THEN 'Oceania'
        ELSE 'Unknown'
    END AS Continent
FROM
    customers;
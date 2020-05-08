SELECT 
G.Name AS Genre
,SUM(IL.Quantity*IL.UnitPrice) AS SalesDollars
FROM InvoiceLine IL
LEFT JOIN Track T on T.TrackId = IL.TrackId 
LEFT JOIN Genre G on T.GenreId = G.GenreId 
GROUP BY G.Name
ORDER BY SUM(IL.Quantity*IL.UnitPrice) DESC
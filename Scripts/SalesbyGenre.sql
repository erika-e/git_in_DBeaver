SELECT 
IL.Quantity*IL.UnitPrice AS SalesDollars
,IL.TrackId
,T.Name as TrackName 
,G.Name as GendreName
FROM InvoiceLine IL
LEFT JOIN Track T on T.TrackId = IL.TrackId 
LEFT JOIN Genre G on T.GenreId = G.GenreId 
GROUP BY InvoiceId 
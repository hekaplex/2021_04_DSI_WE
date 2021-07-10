SELECT 
TOP (1000001) [t24].[EnglishProductSubcategoryName],SUM([t6].[SalesAmount])
 AS [a0]
FROM 
(
(
(
--select [$Table].[ProductKey] as [ProductKey],
--from [dbo].[FactInternetSales] as [$Table]
) AS [t6]

 LEFT OUTER JOIN 

(
select 
--	[$Table].[ProductKey] as [ProductKey],
--  [$Table].[ProductAlternateKey] as [ProductAlternateKey],
--from [dbo].[DimProduct] as [$Table]
) AS [t10] on 
(
[t6].[ProductKey] = [t10].[ProductKey]
)
)


 LEFT OUTER JOIN 

(
select [$Table].[ProductSubcategoryKey] as [ProductSubcategoryKey],
    [$Table].[ProductSubcategoryAlternateKey] as [ProductSubcategoryAlternateKey],
    [$Table].[EnglishProductSubcategoryName] as [EnglishProductSubcategoryName],
    [$Table].[SpanishProductSubcategoryName] as [SpanishProductSubcategoryName],
    [$Table].[FrenchProductSubcategoryName] as [FrenchProductSubcategoryName],
    [$Table].[ProductCategoryKey] as [ProductCategoryKey]
from [dbo].[DimProductSubcategory] as [$Table]
) AS [t24] on 
(
[t10].[ProductSubcategoryKey] = [t24].[ProductSubcategoryKey]
)
)

GROUP BY [t24].[EnglishProductSubcategoryName] 


// Direct Query

SELECT 
TOP (1000001) [t9].[FiscalYear],[t24].[EnglishProductSubcategoryName],SUM([t6].[SalesAmount])
 AS [a0]
FROM 
(
(
((
--select [$Table].[ProductKey] as [ProductKey],
--    [$Table].[OrderDateKey] as [OrderDateKey],
--from [dbo].[FactInternetSales] as [$Table]
) AS [t6]

 LEFT OUTER JOIN 

(
select 
    --[$Table].[DateKey] as [DateKey],
 --   [$Table].[FullDateAlternateKey] as [FullDateAlternateKey],
--from [dbo].[DimDate] as [$Table]
) AS [t9] on 
(
[t6].[DueDateKey] = [t9].[DateKey]
)
)


 LEFT OUTER JOIN 

(
--select [$Table].[ProductKey] as [ProductKey],
--    [$Table].[ProductAlternateKey] as [ProductAlternateKey],
--    [$Table].[Status] as [Status]
--from [dbo].[DimProduct] as [$Table]
) AS [t10] on 
(
[t6].[ProductKey] = [t10].[ProductKey]
)
)


 LEFT OUTER JOIN 

(
select [$Table].[ProductSubcategoryKey] as [ProductSubcategoryKey],
    [$Table].[ProductSubcategoryAlternateKey] as [ProductSubcategoryAlternateKey],
    [$Table].[EnglishProductSubcategoryName] as [EnglishProductSubcategoryName],
    [$Table].[SpanishProductSubcategoryName] as [SpanishProductSubcategoryName],
    [$Table].[FrenchProductSubcategoryName] as [FrenchProductSubcategoryName],
    [$Table].[ProductCategoryKey] as [ProductCategoryKey]
from [dbo].[DimProductSubcategory] as [$Table]
) AS [t24] on 
(
[t10].[ProductSubcategoryKey] = [t24].[ProductSubcategoryKey]
)
)

WHERE 
(
([t24].[EnglishProductSubcategoryName] IN (N'Tires and Tubes',N'Mountain Bikes',N'Road Bikes',N'Touring Bikes'))
)

GROUP BY [t9].[FiscalYear],[t24].[EnglishProductSubcategoryName] 

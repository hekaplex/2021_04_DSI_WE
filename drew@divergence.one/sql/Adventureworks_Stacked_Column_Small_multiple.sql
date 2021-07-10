
SELECT 
TOP 
--Power BI Report Model (representation engine
(1000001) 
	[t2].[CommuteDistance]
	,[t3].[EnglishDayNameOfWeek]
	,[t6].[SalesTerritoryRegion]
	,SUM([t0].[SalesAmount])
 AS [a0]
FROM 
(
	(
		(
		((
		select [$Table].[ProductKey] as [ProductKey],
/*			[$Table].[OrderDateKey] as [OrderDateKey],
			[$Table].[DueDateKey] as [DueDateKey],
			[$Table].[ShipDateKey] as [ShipDateKey],
			[$Table].[CustomerKey] as [CustomerKey],
			[$Table].[PromotionKey] as [PromotionKey],
			[$Table].[CurrencyKey] as [CurrencyKey],
			[$Table].[SalesTerritoryKey] as [SalesTerritoryKey],
			[$Table].[SalesOrderNumber] as [SalesOrderNumber],
			[$Table].[SalesOrderLineNumber] as [SalesOrderLineNumber],
			[$Table].[RevisionNumber] as [RevisionNumber],
			[$Table].[OrderQuantity] as [OrderQuantity],
			[$Table].[UnitPrice] as [UnitPrice],
			[$Table].[ExtendedAmount] as [ExtendedAmount],
			[$Table].[UnitPriceDiscountPct] as [UnitPriceDiscountPct],
			[$Table].[DiscountAmount] as [DiscountAmount],
			[$Table].[ProductStandardCost] as [ProductStandardCost],
			[$Table].[TotalProductCost] as [TotalProductCost],
			[$Table].[SalesAmount] as [SalesAmount],
			[$Table].[TaxAmt] as [TaxAmt],
			[$Table].[Freight] as [Freight],
			[$Table].[CarrierTrackingNumber] as [CarrierTrackingNumber],
			[$Table].[CustomerPONumber] as [CustomerPONumber],
			[$Table].[OrderDate] as [OrderDate],
			[$Table].[DueDate] as [DueDate],
			[$Table].[ShipDate] as [ShipDate]
		from [dbo].[FactInternetSales] as [$Table]
		) AS [t0]

		 LEFT OUTER JOIN 

		(
		select [$Table].[CustomerKey] as [CustomerKey],
			[$Table].[GeographyKey] as [GeographyKey],
			[$Table].[CustomerAlternateKey] as [CustomerAlternateKey],
			[$Table].[Title] as [Title],
			[$Table].[FirstName] as [FirstName],
			[$Table].[MiddleName] as [MiddleName],
			[$Table].[LastName] as [LastName],
			[$Table].[NameStyle] as [NameStyle],
			[$Table].[BirthDate] as [BirthDate],
			[$Table].[MaritalStatus] as [MaritalStatus],
			[$Table].[Suffix] as [Suffix],
			[$Table].[Gender] as [Gender],
			[$Table].[EmailAddress] as [EmailAddress],
			[$Table].[YearlyIncome] as [YearlyIncome],
			[$Table].[TotalChildren] as [TotalChildren],
			[$Table].[NumberChildrenAtHome] as [NumberChildrenAtHome],
			[$Table].[EnglishEducation] as [EnglishEducation],
			[$Table].[SpanishEducation] as [SpanishEducation],
			[$Table].[FrenchEducation] as [FrenchEducation],
			[$Table].[EnglishOccupation] as [EnglishOccupation],
			[$Table].[SpanishOccupation] as [SpanishOccupation],
			[$Table].[FrenchOccupation] as [FrenchOccupation],
			[$Table].[HouseOwnerFlag] as [HouseOwnerFlag],
			[$Table].[NumberCarsOwned] as [NumberCarsOwned],
			[$Table].[AddressLine1] as [AddressLine1],
			[$Table].[AddressLine2] as [AddressLine2],
			[$Table].[Phone] as [Phone],
			[$Table].[DateFirstPurchase] as [DateFirstPurchase],
			[$Table].[CommuteDistance] as [CommuteDistance]
*/
from [dbo].[DimCustomer] as [$Table]
		) AS [t2] on 
		(
		[t0].[CustomerKey] = [t2].[CustomerKey]
		)
		)


		 LEFT OUTER JOIN 

		(
		select [$Table].[DateKey] as [DateKey],
/*			[$Table].[FullDateAlternateKey] as [FullDateAlternateKey],
			[$Table].[DayNumberOfWeek] as [DayNumberOfWeek],
			[$Table].[EnglishDayNameOfWeek] as [EnglishDayNameOfWeek],
			[$Table].[SpanishDayNameOfWeek] as [SpanishDayNameOfWeek],
			[$Table].[FrenchDayNameOfWeek] as [FrenchDayNameOfWeek],
			[$Table].[DayNumberOfMonth] as [DayNumberOfMonth],
			[$Table].[DayNumberOfYear] as [DayNumberOfYear],
			[$Table].[WeekNumberOfYear] as [WeekNumberOfYear],
			[$Table].[EnglishMonthName] as [EnglishMonthName],
			[$Table].[SpanishMonthName] as [SpanishMonthName],
			[$Table].[FrenchMonthName] as [FrenchMonthName],
			[$Table].[MonthNumberOfYear] as [MonthNumberOfYear],
			[$Table].[CalendarQuarter] as [CalendarQuarter],
			[$Table].[CalendarYear] as [CalendarYear],
			[$Table].[CalendarSemester] as [CalendarSemester],
			[$Table].[FiscalQuarter] as [FiscalQuarter],
			[$Table].[FiscalYear] as [FiscalYear],
			[$Table].[FiscalSemester] as [FiscalSemester]
*/
	from [dbo].[DimDate] as [$Table]
		) AS [t3] on 
		(
		[t0].[DueDateKey] = [t3].[DateKey]
		)
		)


		 LEFT OUTER JOIN 

		(
		select [$Table].[ProductKey] as [ProductKey],
	/*		[$Table].[ProductAlternateKey] as [ProductAlternateKey],
			[$Table].[ProductSubcategoryKey] as [ProductSubcategoryKey],
			[$Table].[WeightUnitMeasureCode] as [WeightUnitMeasureCode],
			[$Table].[SizeUnitMeasureCode] as [SizeUnitMeasureCode],
			[$Table].[EnglishProductName] as [EnglishProductName],
			[$Table].[SpanishProductName] as [SpanishProductName],
			[$Table].[FrenchProductName] as [FrenchProductName],
			[$Table].[StandardCost] as [StandardCost],
			[$Table].[FinishedGoodsFlag] as [FinishedGoodsFlag],
			[$Table].[Color] as [Color],
			[$Table].[SafetyStockLevel] as [SafetyStockLevel],
			[$Table].[ReorderPoint] as [ReorderPoint],
			[$Table].[ListPrice] as [ListPrice],
			[$Table].[Size] as [Size],
			[$Table].[SizeRange] as [SizeRange],
			[$Table].[Weight] as [Weight],
			[$Table].[DaysToManufacture] as [DaysToManufacture],
			[$Table].[ProductLine] as [ProductLine],
			[$Table].[DealerPrice] as [DealerPrice],
			[$Table].[Class] as [Class],
			[$Table].[Style] as [Style],
			[$Table].[ModelName] as [ModelName],
			[$Table].[LargePhoto] as [LargePhoto],
			[$Table].[EnglishDescription] as [EnglishDescription],
			[$Table].[FrenchDescription] as [FrenchDescription],
			[$Table].[ChineseDescription] as [ChineseDescription],
			[$Table].[ArabicDescription] as [ArabicDescription],
			[$Table].[HebrewDescription] as [HebrewDescription],
			[$Table].[ThaiDescription] as [ThaiDescription],
			[$Table].[GermanDescription] as [GermanDescription],
			[$Table].[JapaneseDescription] as [JapaneseDescription],
			[$Table].[TurkishDescription] as [TurkishDescription],
			[$Table].[StartDate] as [StartDate],
			[$Table].[EndDate] as [EndDate],
		*/	[$Table].[Status] as [Status]
		from [dbo].[DimProduct] as [$Table]
		) AS [t4] on 
		(
		[t0].[ProductKey] = [t4].[ProductKey]
		)
		)


		 LEFT OUTER JOIN 

		(
		select [$Table].[SalesTerritoryKey] as [SalesTerritoryKey],
			[$Table].[SalesTerritoryAlternateKey] as [SalesTerritoryAlternateKey],
			[$Table].[SalesTerritoryRegion] as [SalesTerritoryRegion],
			[$Table].[SalesTerritoryCountry] as [SalesTerritoryCountry],
			[$Table].[SalesTerritoryGroup] as [SalesTerritoryGroup],
			[$Table].[SalesTerritoryImage] as [SalesTerritoryImage]
		from [dbo].[DimSalesTerritory] as [$Table]
		) AS [t6] on 
	(
	[t0].[SalesTerritoryKey] = [t6].[SalesTerritoryKey]
	)
)

WHERE 
(
[t4].[ProductSubcategoryKey] = 1
)

GROUP BY [t2].[CommuteDistance],[t3].[EnglishDayNameOfWeek],[t6].[SalesTerritoryRegion] 
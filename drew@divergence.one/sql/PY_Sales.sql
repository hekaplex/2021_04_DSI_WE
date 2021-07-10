/*
PY Sales = CALCULATE(SUM(FactInternetSales[SalesAmount]),PREVIOUSYEAR(DimDate[Date]))
*/


SELECT 
SUM(FactInternetSales.SalesAmount) as Sales
,DimDate.CalendarYear,dbo.[PY Sales](DimDate.CalendarYear) 
FROM FactInternetSales
INNER JOIN DimDate
ON FactInternetSales.OrderDateKey = DimDate.DateKey
GROUP BY DimDate.CalendarYear
ORDER BY DimDate.CalendarYear

USE [AdventureWorksDW2019]
GO

/****** Object:  UserDefinedFunction [dbo].[udfTwoDigitZeroFill]    Script Date: 6/10/2021 3:02:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Converts the specified integer (which should be < 100 and > -1)
-- into a two character string, zero filling from the left 
-- if the number is < 10.
CREATE FUNCTION [dbo].[PY Sales] (@year int) 
RETURNS float
AS
BEGIN
	DECLARE @result float;

	SELECT  @result =
	SUM(FactInternetSales.SalesAmount) 
FROM FactInternetSales
INNER JOIN DimDate
ON FactInternetSales.OrderDateKey = DimDate.DateKey
WHERE DimDate.CalendarYear = @year-1
	RETURN @result;
END;
GO


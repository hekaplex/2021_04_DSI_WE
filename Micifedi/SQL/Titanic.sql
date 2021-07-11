/*

What was the average age of survivers by class on Titanic when they were averaging maturity?

*/



--basic aggregate level query

SELECT

--column filter

--grouping column (tuple) or aggregated grain

[Survived]

,Pclass

--aggregate function w alias

, AVG([Age]) as avg_age

  FROM

  --alias for table or column

  [OralHistoryVoiceAnalysis ].[dbo].[train8] AS titanic

  --row filter based on column constrain

  WHERE

--column and value/state

Survived = 1

--aggregating clause

GROUP BY

[Survived]

,Pclass

--WHERE clause on agg function result

HAVING AVG([Age]) > 21

--sort

ORDER BY

[Survived]

,Pclass
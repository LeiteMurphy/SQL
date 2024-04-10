

USE ContosoRetailDW

SELECT
	S.ProductKey,
	SUM(S.SalesQuantity) AS QTD_TOTAL
FROM FactSales S
WHERE S.DateKey >= '2009-01-01'
GROUP BY S.ProductKey
HAVING SUM(S.SalesQuantity) < 1100
ORDER BY QTD_TOTAL DESC
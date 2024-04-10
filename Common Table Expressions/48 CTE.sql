


USE ContosoRetailDW


--- SUBQUERY / SUB CONSULTA


SELECT
	AVG(SQ.VENDAS)
FROM(
	SELECT
		DATEPART(YEAR, S.DateKey) AS ANO,
		DATEPART(MONTH, S.DateKey) AS MES,
		SUM(S.SalesAmount) AS VENDAS
	FROM FactSales S
	GROUP BY DATEPART(YEAR, S.DateKey), DATEPART(MONTH, S.DateKeY)
) AS SQ


--- CTE - COMMON TABLE EXPRESSIONS


WITH SALES_MONTH_AVG(ANO, MES, VENDAS)
AS
(
	SELECT
		DATEPART(YEAR, S.DateKey) AS ANO,
		DATEPART(MONTH, S.DateKey) AS MES,
		SUM(S.SalesAmount) AS VENDAS
	FROM FactSales S
	GROUP BY DATEPART(YEAR, S.DateKey), DATEPART(MONTH, S.DateKeY)
)

SELECT
	AVG(SALES_MONTH_AVG.VENDAS) MEDIA_MENSAL
FROM SALES_MONTH_AVG
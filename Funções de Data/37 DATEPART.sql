


USE ContosoRetailDW

SELECT TOP 100
	S.DateKey,
	DATEPART(YEAR, S.DateKey) AS ANO,
	DATEPART(MONTH, S.DateKey) AS MES,
	DATEPART(DAY, S.DateKey) AS DIA,
	DATEPART(DAYOFYEAR, S.DateKey) AS DIA_DO_ANO,
	DATEPART(WEEKDAY, S.DateKey) AS DIA_DA_SEMANA
FROM FactOnlineSales S
ORDER BY S.DateKey DESC
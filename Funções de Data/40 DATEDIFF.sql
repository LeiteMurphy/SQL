

USE ContosoRetailDW

--DATEDIFF  (INTERVALO, DATAINICIO, DATAFINAL)
SELECT 
	DATEDIFF(DAY, '1994-12-31', GETDATE()) AS DIAS_MEU_NASCIMENTO,
	DATEDIFF(MONTH, '1994-12-31', GETDATE()) AS MES_MEU_NASCIMENTO,
	DATEDIFF(YEAR, '1994-12-31', GETDATE()) AS ANOS_MEU_NASCIMENTO



SELECT TOP 100
	S.DateKey,
	GETDATE(),
	DATEDIFF(DAY, S.DateKey, GETDATE()) AS DATA_ATE_HOJE
FROM FactOnlineSales S
ORDER BY 1 DESC



USE ContosoRetailDW


--01 - SET DATEFORMAT
/* 
	MDY MES, DIA E ANO ( PADR�O AMERICANO )
	DMY DIA, MES E ANO ( BRASIL POR EXEMPLO )
	YMD ANO, MES E DIA
	YDM ANO, DIA E MES
	MYD MES, ANO E DIA
	DYM DIA, ANO E MES


*/
SET DATEFORMAT YMD
SELECT DISTINCT
	S.DateKey
FROM FactOnlineSales S
WHERE S.DateKey BETWEEN '2007-12-01' AND '2007-12-31'
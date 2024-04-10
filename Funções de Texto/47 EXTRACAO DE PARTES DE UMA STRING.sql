

SELECT
	'SQL é mais legal que PowerBI',
	SUBSTRING('SQL é mais legal que PowerBI', 1, 3) AS SUB1,
	SUBSTRING('SQL é mais legal que PowerBI', 22 , 8) AS SUB2,
	RIGHT('SQL é mais legal que PowerBI', 7) AS 'RIGHT',
	LEFT('SQL é mais legal que PowerBI', 3) AS 'LEFT',
	LEFT(RIGHT('SQL é mais legal que PowerBI', 7), 5) AS 'LEFT AND RIGHT',
	CHARINDEX('mais', 'SQL é mais legal que PowerBI') AS 'CHARINDEX',
	LEN('SQL é mais legal que PowerBI') AS 'LEN',
	RIGHT('SQL é mais legal que PowerBI', LEN('SQL é mais legal que PowerBI') - CHARINDEX('mais', 'SQL é mais legal que PowerBI') +1 ) AS 'RIGH, LEN, CHARINDEX'
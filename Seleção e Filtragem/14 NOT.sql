

USE ContosoRetailDW

SELECT
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education,
	BirthDate
FROM DimCustomer

WHERE 
	MaritalStatus IS NOT NULL
	AND NOT TotalChildren BETWEEN 2 AND 4
	AND NOT BirthDate BETWEEN '1950-01-01' AND '1960-01-02'
	AND NumberChildrenAtHome NOT IN (0, 3, 5)
ORDER BY BirthDate ASC
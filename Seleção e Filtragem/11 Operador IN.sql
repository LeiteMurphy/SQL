

USE ContosoRetailDW

SELECT
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'Quantidade Carros',
	Education
FROM DimCustomer

WHERE 
	Education IN ('High School', 'Bachelors')
	AND NumberChildrenAtHome >= 1
	AND NOT MaritalStatus = 'M'
	AND TotalChildren IN (3, 4)
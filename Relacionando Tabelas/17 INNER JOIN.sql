

USE ContosoRetailDW

SELECT TOP 100
	SalesKey,
	DateKey,
	DimChannel.channelKey,
	FactSales.channelKey,
	DimChannel.ChannelName,
	DimChannel.*
FROM FactSales
INNER JOIN DimChannel ON DimChannel.ChannelKey = FactSales.channelKey


USE ContosoRetailDW

SELECT TOP 100
	SalesKey,
	DateKey,
	C.channelKey,
	S.channelKey,
	C.ChannelName,
	C.*
FROM FactSales AS S
INNER JOIN DimChannel C ON C.ChannelKey = S.channelKey
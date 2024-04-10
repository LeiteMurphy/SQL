

USE ContosoRetailDW

SELECT
	S.ChannelKey,
	C.ChannelName,
	S.PromotionKey,
	P.PromotionName,
	SUM(S.SalesAmount) AS 'Soma',
	AVG(S.SalesAmount) AS MEDIA,
	MIN(S.SalesAmount) AS MINIMO,
	MAX(S.SalesAmount) AS MAXIMO,
	COUNT(S.SalesAmount) AS CONTAGEM
FROM FactSales S
INNER JOIN DimChannel C ON C.ChannelKey = S.channelKey
INNER JOIN DimPromotion P ON P.PromotionKey = S.PromotionKey
WHERE 
	S.channelKey IN (1,2) AND
	S.PromotionKey BETWEEN 1 AND 5
GROUP BY 
	S.ChannelKey, C.ChannelName, S.PromotionKey, P.PromotionName
ORDER BY 
	S.ChannelKey, S.PromotionKey
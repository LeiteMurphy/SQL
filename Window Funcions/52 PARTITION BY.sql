

SELECT [TrackId]
      ,[Name]
      ,[Composer]
      ,[Milliseconds]
      ,[Bytes]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY Milliseconds ASC) AS 'ROW_NUMBER'
	  ,ROW_NUMBER() OVER(PARTITION BY Composer ORDER BY Milliseconds ASC) AS 'PARTITION_BY'
  FROM [Chinook].[dbo].[Track]
  WHERE Composer IS NOT NULL

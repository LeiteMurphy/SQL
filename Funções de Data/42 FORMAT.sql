


USE ContosoRetailDW



SELECT 
	GETDATE(),
	FORMAT(GETDATE(),'dd/MM/yyyy HH:mm'),
	FORMAT(GETDATE(),'dd/MM/yyyy HH:mm:ss'),
	FORMAT(GETDATE(),'yyyy-MMM')
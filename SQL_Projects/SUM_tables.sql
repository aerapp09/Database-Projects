
USE db_zooTest2
GO



/*
* CONVERT(varchar(50),@totalHab) = This is converting the data type from MONEY to String Characters
*char(9) = Line Break
*char(13) = Tab Key
*/

DECLARE @totalHab MONEY;
DECLARE @totalNut MONEY;
DECLARE @results MONEY;

SET @totalHab = (SELECT SUM(habitat_cost) FROM tbl_habitat);
SET @totalNut = (SELECT SUM(nutrition_cost) FROM tbl_nutrition);
SET @results = (@totalHab + @totalNut);

PRINT (
	CONVERT(VARCHAR(50), @totalHab) + CHAR(9) + ' - The Total Habitat Cost' + CHAR(13) +
	CONVERT(VARCHAR(50), @totalNut) + CHAR(9) + CHAR(9) + ' - The Total Nutrition Cost' + CHAR(13) + '----------' + CHAR(13) +
	CONVERT(VARCHAR(50), @results)
);
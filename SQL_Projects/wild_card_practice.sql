SELECT * FROM Production.WorkOrder
SELECT DISTINCT City FROM Person.Address

SELECT TOP 50 PERCENT * FROM Person.BusinessEntity

SELECT MIN(OrderQty) LowestOrder FROM Production.WorkOrder

SELECT MAX(OrderQty) HIGHESTOrder FROM Production.WorkOrder

SELECT DISTINCT CITY FROM Person.Address WHERE CITY LIKE 'c%a'

SELECT DISTINCT CITY FROM Person.Address WHERE CITY LIKE 'c[al]%'
SELECT DISTINCT CITY FROM Person.Address WHERE CITY LIKE 'ca*'
SELECT DISTINCT CITY FROM Person.Address WHERE CITY LIKE '%y'
SELECT DISTINCT CITY FROM Person.Address WHERE CITY LIKE '_ydney'
SELECT DISTINCT CITY FROM Person.Address WHERE CITY LIKE '[al]%'
/*
	SYSTEM OBJ

*/

-- 1 ) DATABSE TOTAL

SELECT * FROM SYS.databases

-- 2 ) FIND COL NAME FROM TBL PROBABLY

SELECT * FROM SYS.COLUMNS
WHERE NAME = 'CUSTOMERS'

SELECT * FROM SYS.objects

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE
TABLE_NAME LIKE '%CUST%'
AND COLUMN_NAME LIKE '%INSU%'

SELECT * FROM INFORMATION_SCHEMA.ROUTINES























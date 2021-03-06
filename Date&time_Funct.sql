-- Date Functions
-- 1 ) GETDATE()
-- 2 ) YEAR()
-- 3 ) MONTH()
-- 4 ) DAY()
-- 
-- FORMAT()


-- 1 ) GETDATE()
SELECT GETDATE() AS GETDATE_F
SELECT GETUTCDATE() AS GETDATE_F
SELECT CURRENT_TIMESTAMP AS GETDATE_F2
SELECT SYSDATETIME() AS GETDATE_F3


-- 1 ) YEAR()
SELECT YEAR(GETDATE()) AS YEAR_F

-- 2 ) MONTH()
SELECT MONTH(GETDATE()) AS MONTH_F

-- 3 ) DAY()
SELECT DAY(GETDATE()) AS DAY_F


-- 4 ) WEEK()
--SELECT

-- FORMATS
-- 1 ) DATEPART()
-- 2 ) DATENAME()

-- 1 ) DATEPART(FORMAT,DATE())

-- YEAR = Y,YY,YYY,YYYY,yyyy
-- MONTH = M,MON,mm
-- DAY = D,d,Day

SELECT DATEPART(YEAR,GETDATE()) 

SELECT DATEPART(MONTH,GETDATE()) 

SELECT DATEPART(DAY,GETDATE()) 
-------------------------------------------
SELECT DATEPART(YYYY,GETDATE()) 

SELECT DATEPART(MM,GETDATE()) 

SELECT DATEPART(DD,GETDATE()) 

-- 4 )


SELECT DATENAME(YEAR,GETDATE())

SELECT DATENAME(MONTH,GETDATE())

SELECT DATENAME(DAY,GETDATE()) AS D_O_Y_F
---------------------------------------------
SELECT DATENAME(DAYOFYEAR,GETDATE()) AS D_O_Y_F

SELECT DATENAME(Y,GETDATE()) AS D_O_Y_F

SELECT DATENAME(M,GETDATE()) AS D_O_Y_F

SELECT DATENAME(D,GETDATE()) AS D_O_Y_F

SELECT DATENAME(DW,GETDATE()) AS D_O_Y_F

SELECT DATENAME(DY,GETDATE()) AS D_O_Y_F

SELECT DATENAME(DD,GETDATE()) AS D_O_Y_F

-----------------------------------

SELECT DATENAME(HOUR,GETDATE()) AS H_F1

SELECT DATENAME(MINUTE,GETDATE()) AS M_F2

SELECT DATENAME(SECOND,GETDATE()) AS S_F3

-----------------------------
SELECT DATENAME(HH,GETDATE()) AS D_O_Y_F

SELECT DATENAME(MI,GETDATE()) AS D_O_Y_F

SELECT DATENAME(S,GETDATE()) AS D_O_Y_F

-------------------------------------------

SELECT DATENAME(MILLISECOND,GETDATE()) AS D_O_Y_F

SELECT DATENAME(MICROSECOND,GETDATE()) AS D_O_Y_F

SELECT DATENAME(NANOSECOND,GETDATE()) AS D_O_Y_F
----------------------------------------------------

SELECT SYSDATETIME() AS SYS_DT_F

-- * DATEADD(), DATEDIFF()

-- 1 ) DATEADD()

SELECT DATEADD(YEAR,2,GETDATE()) AS DA_F1

SELECT DATEADD(MONTH,2,GETDATE()) AS DA_F1

SELECT DATEADD(DAY,2,GETDATE()) AS DA_F1
-----------------------------------------------

SELECT DATEADD(YY,2,GETDATE()) AS DA_F1

SELECT DATEADD(MM,2,GETDATE()) AS DA_F1

SELECT DATEADD(DD,2,GETDATE()) AS DA_F1
-----------------------------------------------

SELECT DATEADD(YYYY,2,GETDATE()) AS DA_F1

SELECT DATEADD(MM,2,GETDATE()) AS DA_F1

SELECT DATEADD(DD,2,GETDATE()) AS DA_F1

-- EG : Emp 18/06/2018 year 2 / regs_date

SELECT DATEADD(YEAR,2,'06/18/2018')

--The conversion of a varchar data type to a datetime data type resulted in an out-of-range value.

--SELECT  DATEADD(YEAR,2,DATE_OF_JOINING) FROM EMP

SELECT DATEADD(MONTH,2,GETDATE())

SELECT DATEADD(DAY,2,GETDATE())

--------------------------------------
SELECT DATEADD(YEAR,-2,GETDATE())

SELECT DATEADD(MONTH,-10,GETDATE())

SELECT DATEADD(DAY,-8,GETDATE())

----------------------------------------------

-- DATEDIFF()

SELECT DATEDIFF(YEAR,2018/06/18,2020/06/18) AS DATEDIFF_F1

SELECT DATEDIFF(MONTH,2018/06/18,YEAR(GETDATE())) AS DATEDIFF_F1

SELECT DATEDIFF(DAY,2018/06/18,YEAR(GETDATE())) AS DATEDIFF_F1
-----------------------

SELECT DATEDIFF(YEAR,'2013/02/24','2020-06-12') AS DATEDIFF_F1

SELECT DATEDIFF(MONTH,'2013/02/24','2020-06-12') AS DATEDIFF_F1

SELECT DATEDIFF(DAY,'2013/02/24','2020-06-12') AS DATEDIFF_F1
 
-- CONVERSION FUNCTIONS

-- 1 ) CONVERT()
-- 2 ) CAST()

-- DATE  --> CONVERT

-- 1 ) CONVERT()
SELECT CONVERT(GETDATE(),YYYY,YEAR)


-- 2 ) CAST()

SELECT CAST(121 AS varchar(10)) AS CASTA_F1

SELECT CAST(150 AS CHAR) + 20

SELECT '150' + 20

SELECT CAST(121 AS varchar(10)) + 5 AS CASTA_F1

SELECT CAST(121 AS int) +5 AS CASTA_F1

SELECT CAST(121 AS varchar(10)) AS CASTA_F1


-----------------------



SELECT DATEDIFF(YEAR,CONVERT(DATE,'2018/06/18'),CONVERT(DATE,'2020/06/18')) AS DATEDIFF_F1

SELECT DATEDIFF(MONTH,CONVERT(DATE,'2018/06/18'),
CONVERT(DATE,GETDATE())) AS DATEDIFF_F1

SELECT DATEDIFF(DAY,CONVERT(DATE,'2018/06/18'),CONVERT(DATE,GETDATE())) AS DATEDIFF_F1

---------------------------------


SELECT DATEDIFF(YEAR,CONVERT(DATE,'2018/06/18'),CONVERT(DATE,'2020/06/18')) AS DATEDIFF_F1

SELECT DATEDIFF(MONTH,CONVERT(DATE,'2018/06/18'),
CONVERT(DATE,GETDATE())) AS DATEDIFF_F1

SELECT DATEDIFF(DAY,CONVERT(DATE,'2018/06/18'),CONVERT(DATE,GETDATE())) AS DATEDIFF_F1

-- Other Functions

SELECT SYSTEM_USER

SELECT SYSTEM_USER

SELECT app_name()

SELECT HOST_ID()

SELECT HOST_name()

-- Configuration functions @@ (SCOPE FUNCTIONS)

-- 1 ) @@datefirst
SELECT @@DATEFIRST AS T

-- 2 ) @@dbTS
SELECT @@DBTS AS T

-- 3 ) LANGID
SELECT @@LANGID

-- 4 ) LANGUAGE
SELECT @@LANGUAGE

-- 5 ) LOCK_TIMEOUT
SELECT @@LOCK_TIMEOUT

-- 6 ) MAX_CONNCECTIONS
SELECT @@MAX_CONNECTIONS

-- 7 ) MAX_PRECISION
SELECT @@MAX_PRECISION

-- 8 ) NESTLEVEL
SELECT @@NESTLEVEL

-- 9 ) OPTIONS
SELECT @@OPTIONS

-- 10 ) REMSERVER
SELECT @@REMSERVER

-- 11 ) SERVERNAME
SELECT @@SERVERNAME

-- 12 ) SERVICENAME
SELECT @@SERVICENAME

-- 13 ) SPID
SELECT @@SPID

-- 14 ) TEXTSIZE 
SELECT @@TEXTSIZE

-- 15 ) VERSION
SELECT @@VERSION
--Microsoft SQL Server 2017 (RTM-GDR) (KB4505224) - 14.0.2027.2 (X64)   Jun 15 2019 00:26:19   Copyright (C) 2017 Microsoft Corporation  Developer Edition (64-bit) on Windows 10 Home Single Language 10.0 <X64> (Build 18363: ) 


-- SECURITY FUNCTIONS

SELECT USER_NAME()

SELECT USER_ID()

SELECT SUSER_SID()

SELECT SUSER_SNAME()

SELECT USER

----  CHANGE A DATABSE NAME, CHANGE A TABLE NAME,

 EXEC sp_renamedb 'DEMO2','PRACS'

 --The database name 'PRACS' has been set.

--Completion time: 2020-06-12T13:14:51.7368950+05:30

exec sp_rename 'dbo.emp','dbo.Employee'

--Caution: Changing any part of an object name could break scripts and stored procedures.

--Completion time: 2020-06-12T13:17:11.6558265+05:30

-- 3 dots

--SEVERNAME.DATABASE_NAME.DBO.TABLENAME
--SEVERNAME.DATABASE_NAME..TABLENAME
 
exec sp_rename 'demo1..[dbo.Employee]','Employee'

--Caution: Changing any part of an object name could break scripts and stored procedures.

--Completion time: 2020-06-12T13:21:27.5947860+05:30


select * from [dbo.Employee]

CREATE TABLE T1
(
SNO INT
)

-- Terminology Rules for creating schema object(databases,table... and many more)

-- 1 ) _name (table/fun/sp/view/trigger/....)  special character not allowed

-- 2 ) ; not allowed for query










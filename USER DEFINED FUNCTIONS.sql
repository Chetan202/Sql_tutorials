/*

USER DEFINED FUNCTIONS

1 ) INLINE TABLE-VALUED FUNCTIONS
2 ) MULT-STATEMENT TABLE-VALUED FUNCTIONS
3 ) SCALAR VALUED FUNCTIONS
4 ) 



*/

-- 3 ) SCALAR VALUED FUNCTIONS


-- EG : SELECT F_3PARA(P1,P2,P3) => O/P : ABC

CREATE FUNCTION F_3PARA(@P1 VARCHAR(100),@P2 VARCHAR(100),@P3 VARCHAR(100))
RETURNS VARCHAR(400)
BEGIN
		RETURN (@P1 + '/' + @P2 + '/' + @P3) 
		-- CHAR(10) /CHAR(13) NEW LINE
END

SELECT DBO.F_3PARA('P1','P2','P3') AS F_NAME

SELECT DBO.F_3PARA('A self JOIN is a regular join, but the table is joined with itself.','T1 and T2 are different table aliases for the same table.','In this tutorial we will use the well-known Northwind sample database.') AS F_NAME

SELECT LEN('In this tutorial we will use the well-known Northwind sample database.')

--A self JOIN is a regular join, but the table is joined with itself./T1 and T2 are different table aliases for the same table./In this tutorial we will use the well-known Northwind sample database.


SELECT * FROM SYS.OBJECTS
WHERE
NAME = 'F_3PARA'

EXECUTE SP_HELPTEXT F_3PARA

SELECT DBO.F_3PARA('P1',P2,'P3') AS F_NAME

CREATE FUNCTION AGE(@DOB DATE)
RETURNS INT
BEGIN

	  DECLARE @v1 INT = DATEDIFF(YEAR,@DOB,GETDATE())

	  RETURN (@v1)
END

--SELECT DATEDIFF(YEAR,'11/16/1994',GETDATE()) 
--AS AGE

--SELECT YEAR(CAST(('11/16/1994') AS DATE)) A 

--SELECT YEAR(GETDATE())

SELECT DBO.AGE('05/05/2001') AS AGE
-------------------------------------------------------

-- 1 ) INLINE TABLE-VALUED FUNCTION

CREATE FUNCTION FITV_CUST(@ID INT)
RETURNS TABLE
AS
	RETURN(SELECT * FROM CUSTOMERS WHERE SNO = @ID)


--------------------------------------

SELECT * FROM DBO.FITV_CUST(1) 

SELECT NAME, AGE, RELIGION, PROFESSION, SALARY FROM DBO.FITV_CUST(1) 

-- 3 ) MULTI-VALUED TABLE FUNCTIONS

-- DROP FUNCTION MVTF_PRO_SHOP

CREATE FUNCTION MVTF_PRO_SHOP()
RETURNS @TBL TABLE (ID INT,CUST_NAME VARCHAR(100),CUST_PROD VARCHAR(100),CUST_AMT MONEY)
AS
BEGIN

	INSERT INTO @TBL
	SELECT ID,CUST_NAME,CUST_PROD,CUST_AMT FROM SHOP

	RETURN 

END

--------------

SELECT DBO.MVTF_PRO_SHOP() 
--Cannot find either column "DBO" or the user-defined function or aggregate "DBO.MVTF_PRO_SHOP", or the name is ambiguous.

SELECT * FROM DBO.MVTF_PRO_SHOP()












/*
	TRIGGER 

	CREATE TRIGGER trigger_name [BEFORE|AFTER] event
	ON table_name trigger_type
	BEGIN
	  -- trigger_logic
	END;

*/

--CREATE TABLE shop1
--(
--	id int IDENTITY(1,1) NOT NULL,
--	cust_name varchar(20) NULL,
--	cust_prod varchar(20) NULL,
--	cust_amt money NULL,
--)

--SELECT * FROM SHOP

--SELECT * FROM PRODUCT

ALTER TRIGGER TGR_INSERT_SHOP ON SHOP FOR INSERT
AS 

	INSERT INTO SHOP1
	(CUST_NAME,CUST_PROD,CUST_AMT)

	SELECT CUST_NAME,CUST_PROD,CUST_AMT FROM SHOP
	WHERE 
	ID = (SELECT MAX(ID) FROM SHOP)

	PRINT 'RECORD INSERTED FROM TRIGGER INTO SHOP1'
----------------------------------------

SP_HELPTEXT TGR_INSERT_SHOP

INSERT INTO SHOP
(CUST_NAME,CUST_PROD,CUST_AMT)
VALUES
('Ranjeet','Iphone',800)

SELECT * FROM SHOP1

---------------------------------

INSERT INTO SHOP
(CUST_NAME,CUST_PROD,CUST_AMT)
VALUES
('Yash','Camera',80000.001)

------------------------------------------

INSERT INTO SHOP
(CUST_NAME,CUST_PROD,CUST_AMT)
VALUES
('Faryal1','TV1',814.56)

-----------------------------------------

CREATE TRIGGER TGR_INSERT_SHOP ON SHOP FOR UPDATE
AS 

	INSERT INTO SHOP1
	(CUST_NAME,CUST_PROD,CUST_AMT)

	SELECT CUST_NAME,CUST_PROD,CUST_AMT FROM SHOP
	WHERE 
	ID = (SELECT MAX(ID) FROM SHOP)















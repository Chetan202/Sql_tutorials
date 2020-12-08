/*
	VIEW IS A VIRTUAL TBL
*/

ALTER VIEW V_SHOP

AS
	-- SELECT QUEREY 
	SELECT id, cust_name, cust_prod, cust_amt
	FROM SHOP

-------------------------------------

EXEC V_SHOP
-- The request for procedure 'V_SHOP' failed because 'V_SHOP' is a view object.

SELECT * FROM V_SHOP

EXEC SP_HELPTEXT V_SHOP














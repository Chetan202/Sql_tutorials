print 'Welcome to My World';

DECLARE @INDEX INT,@COUNT INT=1;
SET @INDEX = 10;
WHILE (@COUNT<=10)
BEGIN
	PRINT CAST(@INDEX AS VARCHAR(10)) +' X '+ CAST(@COUNT AS VARCHAR(10))+ ' = ' +CAST((@COUNT * @INDEX) AS VARCHAR(10));
	SET @COUNT=@COUNT+1;
END
------------------------------
SELECT * FROM product
WHERE prod_name LIKE '[bsp]%'

SELECT * FROM product
WHERE prod_name LIKE '[ts]%'

SELECT * FROM product
WHERE prod_name LIKE '_h%'

SELECT * FROM product
WHERE prod_name LIKE 'S_%'

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name IN ('BOOKS')
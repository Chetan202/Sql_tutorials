
-- Clause ( filter / raw / product result)
-- 1 ) WHERE 
-- 2 ) HAVING

-- SEQUENTIAL EXEC FLOW QUERY
-- 1 ) FROM
-- 2 ) WHERE
-- 3 ) SELECT 
-- 4 ) DISTINCT / TOP
-- 5 ) GROUP BY
-- 6 ) HAVING
-- 7 ) ORDER BY 
-- 8 ) 
---------------------------------------

-- 1 ) WHERE (OPERATORS)// MATHS,COMPARISION,COMPOUND COMPARISION , LOGICAL CONDITIONS ,
-- + , - , * , / , % , = ,<>, != , < , > , <= , >= , AND && , OR || , NOT ! ,IS NULL , IS NOT NULL, IN , BETWEEN , EXISTS, LIKE ,ANY, ALL , SOME , DISTINCT 

SELECT * FROM PRODUCT

SELECT * FROM SHOP

-- 1 ) +

SELECT * FROM PRODUCT
SELECT * , ( prod_quantity + 10 ) prod_quantity_PLUS10 FROM product
WHERE ID = 2 

-- 2 ) -
SELECT * , ( prod_quantity - 10 ) prod_quantity_MINUS10 FROM product
WHERE ID = 2 

-- 3 ) *
SELECT * , ( prod_quantity * 2 ) prod_quantity_INTO10 FROM product
WHERE ID = 5 

-- 4 ) /
SELECT * , ( prod_quantity / 3 ) prod_quantity_DIVISION10 FROM product
WHERE ID = 1 

-- 5 ) %

SELECT * , ( prod_quantity % 3 ) prod_quantity_MOD10 FROM product
WHERE ID = 1 

-- 6 ) =

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name ='Laptop'

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name = '1'
--Conversion failed when converting the varchar value 'Laptop' to data type int.

-- 7 ) <> / !=
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name <> 'Laptop'

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name != 'Laptop'

-- 8 ) <

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_quantity < 10

-- 9 ) >

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_quantity > 1

-- 10 ) <=

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_quantity <= 1

-- 11 ) >=

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_quantity >= 2

-- 12 ) <>= / !=

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_quantity != 2

-- 13 ) AND
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name = 'Shirt'
AND 
prod_quantity = 1

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name = 'Shirt'
AND 
prod_quantity = 3

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name = 'Shirt'
AND 
prod_quantity = 1
AND 
cust_id = 3

-- OR
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name = 'Shirt'
OR 
prod_quantity = 1

--EXEC SP_HELP product

--INSERT INTO product
--(prod_id, prod_name, prod_quantity, cust_id)
--VALUES
--(123,NULL,3,3),(124,'Books',NULL,3),(NULL,NULL,NULL,NULL)

-- 14 ) NULL (NOT NULL , IS NULL)

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
(prod_name IS NULL)
AND (prod_quantity IS NOT NULL)

-- 15 ) IN
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_name IN ('lAPTOP','BOOKS')

--(prod_name IS NULL)
--OR (prod_quantity IS NOT NULL)

-- 16 ) BETWEEN ( RANGE )
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
prod_quantity BETWEEN 2 AND 3

SELECT id, cust_name, cust_prod, cust_amt
FROM shop
WHERE
cust_amt BETWEEN 50.00 AND 15000.00

SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE 
id BETWEEN 5 AND 3

-- 17 ) EXISTS

IF EXISTS(SELECT id FROM product WHERE ID = 55)
BEGIN
	SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
	WHERE ID = 5
END
ELSE
BEGIN
	PRINT 'NO RECORD ' + CHAR(10) +  'FOUND'
END

--  18 ) LIKE ( PATTERN _ , % ) / WILDCARD []
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE  
prod_name LIKE  '%AV%'

-- i ) Start with 'l' in prod_name from product
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE  
prod_name LIKE 'l%'

-- ii ) End with 't' in prod_name from product
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE  
prod_name LIKE '%t'

-- iii ) Middle char with 'tt'  in prod_name from product
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE  
prod_name LIKE '%tt%'

-- iv ) Second Char contain with 's' in prod_name from product
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE  
prod_name LIKE '_s%'

-- 19 ) Wild cards
/*

 A wildcard character is used to substitute one or more characters in a string.
%	= Represents zero or more 
eg : bl% finds bl, black, blue, and blob
_	= Represents a single character
eg : h_t finds hot, hat, and hit
[]	= Represents any single character within the brackets
eg : h_t finds hot, hat, and hit
^	= Represents any character not in the brackets
eg : h[^oa]t finds hit, but not hot and hat
-  = Represents a range of characters
eg : c[a-b]t finds cat and cbt

*/

-- i ) [charlist] 
SELECT * FROM product
WHERE prod_name LIKE '[bsp]%'

-- ii ) [^charlist] 
SELECT * FROM product
WHERE prod_name LIKE '[^bsp]%'

-- iii ) [a-z]
SELECT * FROM product
WHERE prod_name LIKE '[a-g]%'

SELECT * FROM product
WHERE prod_name LIKE '[g-z]%'

-- 20 ) OPERATOR ANY (SUBQUERY) / ALL 
-- i ) 
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE
prod_name = ANY (SELECT * FROM product WHERE prod_name LIKE '[g-z]%')

--Only one expression can be specified in the select list when the subquery is not introduced with EXISTS.

-- ii )
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE
prod_name = ANY (SELECT prod_name FROM product WHERE prod_id = 4277)

-- iii ) 
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE
cust_id = ANY (SELECT ID FROM shop )

-- iv ) ALL
SELECT id, prod_id, prod_name, prod_quantity, cust_id FROM product
WHERE
prod_name = ANY (SELECT cust_prod FROM shop )

-- 21 ) DISTINCT
SELECT DISTINCT cust_id FROM product
ORDER BY prod_id
------------------------------------

PRINT 'WELCOME TO SQL SERVER' + CHAR(13) ;

GO

DECLARE @COUNT INT = 1,@NUMBER INT ;

SET @NUMBER = 10;

WHILE ( @COUNT <= 10 )
BEGIN
		
		PRINT CAST(@NUMBER AS VARCHAR(10)) + ' x ' + CAST(@COUNT AS VARCHAR(10)) + ' = ' +  CAST( (@NUMBER * @COUNT) AS VARCHAR(3));

		SET @COUNT = @COUNT + 1;
END













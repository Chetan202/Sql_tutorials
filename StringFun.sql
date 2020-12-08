-- IN BUILTS FUNCTIONS
-- A ) STRINGS 
-- 1 ) LEN() = LENGTH
-- 2 ) CHAR() 
-- 3 ) ASCII
-- 4 ) LEFT()
-- 5 ) RIGHT()
-- 6 ) LTRIM()
-- 7 ) RTRIM()
-- 8 ) UPPER()
-- 9 ) LOWER()
-- 10 ) SUBSTRING()
-- 11 ) PATINDEX()
-- 12 ) CHARINDEX()
-- 13 ) REVERSE()
-- 14 ) QUOTENAME()
-- 15 ) REPLACE()
-- 16 ) REPLICATE()
-- 17 ) STUFF()
-- 18 ) TRIM()
-- 19 ) SPACE()
-- 20 ) STR()
-- 21 ) CONCATWS()


-- 1 ) LEN()
SELECT LEN('AKSHAY') AS LENGTH_FUN

--2 ) CHAR()
SELECT CHAR(65) AS CHARACHTER_FUN
SELECT CHAR(97) AS CHARACHTER_FUN

-- 3 ) ASCII
SELECT ASCII('A') AS ASCII_FUN
SELECT ASCII('a') AS ASCII_FUN

-- 4 ) LEFT()
SELECT LEFT('AKSHAY',2) AS LEFT_FUN
SELECT LEFT('CHETAN',2) AS LEFT_FUN

-- 5 ) RIGHT()
SELECT RIGHT('AKSHAY',3) AS RIGHT_FUN
SELECT RIGHT('CHETAN',3) AS RIGHT_FUN

-- 6 ) LTRIM()
SELECT LTRIM('  AKSHAY') AS LTRIM_FUN

SELECT LEN('AKSHAY') AS LEN_FUN

-- 7 ) RTRIM() 
SELECT RTRIM('INDIA  ') AS RTRIM_FUN
SELECT LEN('INDIA  ') AS RTRIM_FUN

-- 8 ) UPPER()
SELECT UPPER('austrila') AS UPPER_FUN
SELECT UPPER('AUstrIla') AS UPPER_FUN

-- 9 ) LOWER()
SELECT LOWER('AKSHAY') AS LOWER_FUN
SELECT LOWER('LONdoN') AS LOWER_FUN

-- 10 ) SUBSTRING()
SELECT SUBSTRING('AKSHAY KODAM',1,7) AS SUBSTRING_FUN
SELECT LEN('AKSHAY ')AS LEN_F
SELECT SUBSTRING('AKSHAY KODAM',1,9) AS SUBSTRING_FUN

-- 11 ) PATINDEX() %%
SELECT PATINDEX('%T%','CHETAN') AS PATINDEX_F
SELECT PATINDEX('%T%','editing') AS PATINDEX_F
SELECT PATINDEX('%T%','UPDATING') AS PATINDEX_F

-- 12 ) CHARINDEX()
SELECT CHARINDEX('D','KODAM',1) AS CHARINDEX_F
SELECT CHARINDEX('D','KODAM') AS CHARINDEX_F
SELECT CHARINDEX('D','KODAM MAD',4) AS CHARINDEX_F

-- 13 ) REVERSE()
SELECT REVERSE('AKSHAY KODAM') AS REVERSE_F

-- 14 ) REPLACE()
SELECT REPLACE('W3SCHOOL TUTORIAL','T','M') AS REPLACE_F
SELECT REPLACE('DUCK','D','F') AS REPLACE_F

-- 15 ) REPLICATE()
SELECT REPLICATE('AKSHAY ',5) AS REPLICATE_F

-- 16 ) SPACE()
SELECT SPACE(5) AS SPACE_F

SELECT LEN('     ')

SELECT REPLICATE('AKSHAY' + SPACE(1) ,5) AS REPLICAT_SPACE_F

SELECT REPLICATE('HERO' + SPACE(5) ,5) AS REPLICAT_SPACE_F

-- 17 ) QUOTENAME()
SELECT QUOTENAME('AKSHAY','[') AS QUOTENAME_F
SELECT QUOTENAME('AKSHAY','{') AS QUOTENAME_F
SELECT QUOTENAME('AKSHAY','(') AS QUOTENAME_F
SELECT QUOTENAME('AKSHAY','"') AS QUOTENAME_F
SELECT QUOTENAME('AKSHAY','<') AS QUOTENAME_F

-- 18 ) STUFF()
SELECT STUFF('TUTORIAL',4,2,'M') AS STUFF_F

SELECT STUFF('TUTORIAL FOR LEARNINGS',10,3,'TO') AS STUFF_F

SELECT CHARINDEX('F','TUTORIAL FOR')

-- 19 ) TRIM()
SELECT TRIM('	AKSHAY  ') AS TRIM_F

-- 20 ) STR()
SELECT STR(435 + 45435) AS STR_F

SELECT (435 + 45435) AS STR_F

-- 21 ) CONCATWS()
SELECT CONCAT('AKSHAY ','KODAM ','DEVELOPER') AS CONCAT_FUN
SELECT CONCAT_WS('.','KODAM','DEVELOPER','LEGEND') AS CONCAT_FUN

--KODAM.DEVELOPER.LEGEND






--A)String
--1)LEN()
SELECT LEN('CHETAN')

--2) CHAR()
SELECT CHAR(65)AS CHAR_F

--3)ASCII()
SELECT ASCII('A') AS ASCII_F

--4)LEFT
SELECT LEFT('CHETAN',4)

--5)RIGHT()
SELECT RIGHT('CHETAN',2)

--6)LTRIM()
SELECT LTRIM('  CHETAN')


--7)RTRIM()
SELECT RTRIM('CHETAN  ')

--8)TRIM()
SELECT TRIM(' CHETAN ')

--9)UPPER()
SELECT UPPER('Chetan Jha')

--10)LOWER
SELECT LOWER('CHETAN jha')

--11)SUBSTRING()
SELECT SUBSTRING('CHETAN JHA',1,6) --CHETAN
SELECT SUBSTRING('BHARAT IS GREAT',1,6)

--12)PATINDEX()
SELECT PATINDEX('%T%','CHETAN')

--13)CHARINDEX()
SELECT CHARINDEX('A','CHETAN',1)

--14)REVERSE()
SELECT REVERSE('CHETAN')

--15)REPLACE()
SELECT REPLACE('W3SCHOOL.COM','C','B')

--16)REPLICATE()
SELECT REPLICATE('CHETAN ', 5)

--17)QUOTENAME()
SELECT QUOTENAME('CHETAN','(')

--18)STUFF()
SELECT STUFF('CHETAN',5,2,'U')

--19)SPACE()
SELECT REPLICATE('CHETAN'+SPACE(1),5)

--20)STR()
SELECT STR(400+200)

--21)CONCAT()
SELECT CONCAT('CHETAN',' JHA')

--22)CONCAT_WS()
SELECT CONCAT_WS('.','chetan','jha','@','gmail','com')


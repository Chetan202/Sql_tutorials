--CREATE DATABASE DEMO1

--GO
--USE DEMO1
--GO
--CREATE TABLE Emp
--(id int,
--Firstname varchar(20),
--Lastname varchar(20),
--Salary money,
--Address varchar(200),
--email varchar(20))

--INSERT INTO Emp
--(id ,Firstname,Lastname ,Salary ,Address ,email )
--VALUES (1,'Sanjog','Belose',40000,'anghan,mira rd,401107','SB@gmail.com');

--INSERT INTO Emp
--(id ,Firstname,Lastname ,Salary ,Address ,email )
--VALUES (2,'Rishi','Kitawat',60000,'lodha,santacruz,mumbai','RK@gmail.com');

--INSERT INTO Emp
--(id ,Firstname,Lastname ,Salary ,Address ,email )
--VALUES (3,'Rahul','Singh',70000,'Sunshine,Malad,401108','RahulS12@gmail.com');

--INSERT INTO Emp
--(id ,Firstname,Lastname ,Salary ,Address ,email )
--VALUES (4,'Kalpesh','kubal',10000,'Gokul,Kandivali,401101','kalpesh@gmail.com');

--INSERT INTO Emp
--(id ,Firstname,Lastname ,Salary ,Address ,email )
--VALUES (5,'Dipak','kubal',1000,'NewYork,America','Dipak@gmail.com');

SELECT MAX(salary) AS MAX_SAL
FROM Emp

SELECT MAX(Salary) AS SAL_MAX
FROM Emp
WHERE Salary<(SELECT MAX(Salary) AS SAL_MAX FROM Emp)

SELECT MIN(Salary) AS SAL_MIN
FROM Emp

SELECT MIN (Salary) AS MIN_SAL
FROM Emp

SELECT MIN (Salary) AS MIN_SAL
FROM Emp
WHERE Salary>(SELECT MIN (Salary) AS MIN_SAL FROM Emp)

SELECT AVG(Salary) AS AVG_SAL
FROM Emp

SELECT COUNT(id) AS COUNT_F FROM Emp

SELECT SUM(Salary) AS SUM_F
FROM Emp

SELECT CEILING(Salary) 
FROM Emp

SELECT FLOOR(Salary) 
FROM Emp

-- ROW_NUMBER()

SELECT ROW_NUMBER() OVER(ORDER BY SALARY) RN_SAL,* FROM EMP

-- 1ST MAX, 2ND MAX , N MAX

SELECT * FROM
(
SELECT ROW_NUMBER() OVER(ORDER BY SALARY DESC) RN_SAL,* FROM EMP
) AS TEMP_TBL
WHERE RN_SAL = 4

-- ALTERNATE METHOD 

SELECT TOP 1 ROW_NUMBER() OVER(ORDER BY SALARY DESC) RN_SAL,* FROM EMP

-- 1,2, N MIN

SELECT * FROM
(
	SELECT ROW_NUMBER() OVER(ORDER BY SALARY ) RN_SAL,* FROM EMP
) AS TEMP_TBL
WHERE RN_SAL = 4


















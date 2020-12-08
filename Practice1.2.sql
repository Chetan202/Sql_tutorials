SELECT userid,username, LEN(username) AS NAME 
FROM new_student_2
--WHERE userid=1

SELECT userid,username, LEN(username) AS LEN_FUNC
FROM new_student_2

SELECT userid,username, CHAR(userid) AS CHAR_ID_FUNC
FROM new_student_2
--WHERE userid=12

SELECT userid,username,ASCII(username) AS ASCII_username_FUNC
FROM new_student_2

SELECT userid,username,TRIM(username) AS TRIM_FUNC
FROM new_student_2

SELECT userid,username,LEFT(username,4) AS LEFT_FUNC,RIGHT(username,4) AS RIGHT_FUNC
FROM new_student_2

SELECT userid,username,SUBSTRING(username,1,1) AS SUBSTRING_FUNC
FROM new_student_2

SELECT userid,username,UPPER(username) AS UPPER_FUNC
FROM new_student_2

SELECT userid,username,LOWER(username) AS LOWER_FUNC
FROM new_student_2


SELECT userid,username,PATINDEX('%a%',username) AS PATINDEX_FUNC
FROM new_student_2

ALTER TABLE new_student_2
ADD gmail varchar(25)

SELECT * FROM new_student_2

UPDATE new_student_2
SET gmail=CONCAT_WS('.','akshay1@gamil','com')
WHERE userid=1

ALTER TABLE new_student_2
DROP COLUMN gamil

SELECT * FROM new_student_2

UPDATE new_student_2
SET gmail=CONCAT_WS('.','abhi4@gamil','com')
WHERE userid=4

SELECT userid,username,QUOTENAME(username,'{') AS QUOTENAME_FUNC
FROM new_student_2


SELECT userid,username,stuff(username,1,1,'A')
FROM new_student_2
WHERE userid=4

SELECT userid,username,gmail,REPLICATE(username + SPACE(1),5)
FROM new_student_2

SELECT userid,username,gmail,REVERSE(username) AS REVERSE_FUNC
FROM new_student_2

SELECT userid,username,gmail,REPLACE(username,'a','DD') AS REPLACE_FUNC
FROM new_student_2

SELECT userid,username,gmail,CHARINDEX('a',username,1) AS CHARINDEX_FUNC
FROM new_student_2


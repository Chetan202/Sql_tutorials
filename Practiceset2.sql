CREATE DATABASE DEMO2
GO
USE DEMO2
GO
CREATE TABLE shop 
(id int NOT NULL IDENTITY(1,1) PRIMARY KEY ,
cust_name varchar(20),
cust_prod varchar(20),
cust_amt money,
)

INSERT INTO shop
VALUES('Sanjeve','Biscuit',50),('Kalpesh','Shirt',1000),('Raj','TShirt',2200),('Rahul','Atta',500),('Sanjog','Lava',15000),('Ram','Laptop',58000)

Select * FROM Shop


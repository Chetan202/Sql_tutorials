CREATE DATABASE DEMO2

CREATE TABLE Customer 
(id int NOT NULL IDENTITY(1,1) ,
cust_name varchar(20),
cust_prod varchar(20),
cust_amt money)

INSERT INTO Customer
VALUES('Sanjeve','Biscuit',50),('Kalpesh','Shirt',1000),('Raj','TShirt',2200),('Rahul','Atta',500),('Sanjog','Lava',15000),('Ram','Laptop',58000)


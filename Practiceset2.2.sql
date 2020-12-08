USE DEMO2
GO
CREATE TABLE product 
(id INT NOT NULL IDENTITY(1,1) ,
prod_id VARCHAR(20),
prod_name VARCHAR(20),
prod_quantity INT,
cust_id INT REFERENCES shop(id)
)



INSERT INTO product
VALUES(2212,'Shirt',1,2),(4524,'TShirt',2,3),(4277,'Atta',1,4),(5252,'Lava',1,5),(0241,'Biscuit',2,1)
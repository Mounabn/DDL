
-- CUSTOMER table
CREATE TABLE CUSTOMER (
    Customer_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER NOT NULL
);


--Product table
CREATE TABLE PRODUCT (
    Product_Id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

-- Add a column Category (VARCHAR2(20))
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);



--ORDERS table
CREATE TABLE ORDERS (
    Order_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Id VARCHAR2(20) NOT NULL,
    Product_Id VARCHAR2(20) NOT NULL,
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY (Customer_Id) REFERENCES CUSTOMER(Customer_Id),
    FOREIGN KEY (Product_Id) REFERENCES PRODUCT(Product_Id)
);

-- Add a column OrderDate (DATE)  
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;
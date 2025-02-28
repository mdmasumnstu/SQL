USE CHAPTER;
CREATE TABLE SALESMAN_MASTER (
    SALESMANNO    VARCHAR(6),
    SALESMANNAME  VARCHAR(20),
    ADDRESS1      VARCHAR(30),
    ADDRESS2      VARCHAR(30),
    CITY          VARCHAR(20),
    STATE         VARCHAR(20),
    PINCODE       DECIMAL(6),
    SALAMT        DECIMAL(10,2),
    TARGET        DECIMAL(10,2),
    YTDSALES      DECIMAL(10,2)
);
SELECT *FROM SALESMAN_MASTER;

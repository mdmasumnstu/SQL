USE CHAPTER;
CREATE TABLE SALES_ORDER1 (
    ORDERNO VARCHAR(6) PRIMARY KEY,
    CLIENTNO VARCHAR(6)  REFERENCES CLIENT_MASTER1(CLIENTNO),
    ORDERDATE DATE NOT NULL,
    DELYADDR VARCHAR(25),
    SALESMANNO VARCHAR(6) REFERENCES SALESMAN_MASTER1(SALESMANNO),
    DELYTYPE CHAR(1) DEFAULT 'F' CHECK (DELYTYPE IN ('P', 'F')),
    BILLYN CHAR(1),
    DELYDATE DATE CHECK (DELYDATE >= ORDERDATE),
    ORDERSTATUS VARCHAR(10) CHECK (ORDERSTATUS IN ('In Process', 'Fulfilled', 'BackOrder', 'Cancelled'))
);


INSERT INTO SALES_ORDER1 (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
VALUES
('O1001', 'C001', '2023-10-26', '123 Main St', 'S1001', 'F', 'Y', '2023-10-28', 'Fulfilled'),
('O1002', 'C002', '2023-10-26', '456 Elm St', 'S1002', 'P', 'N', '2023-11-02', 'In Process'),
('O1003', 'C003', '2023-10-27', '789 Oak St', 'S1001', 'F', 'Y', '2023-10-29', 'Fulfilled'),
('O1004', 'C001', '2023-10-28', '123 Main St', 'S1003', 'P', 'Y', '2023-11-05', 'BackOrder'),
('O1005', 'C004', '2023-10-29', '321 Pine St', 'S1002', 'F', 'N', '2023-10-31', 'Fulfilled'),
('O1006', 'C002', '2023-10-30', '456 Elm St', 'S1001', 'F', 'Y', '2023-11-01', 'In Process');


SELECT * FROM SALES_ORDER1;
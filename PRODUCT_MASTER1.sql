CREATE TABLE PRODUCT_MASTER1 (
    PRODUCTNO      VARCHAR(6) PRIMARY KEY CHECK (PRODUCTNO LIKE 'P%'),
    DESCRIPTION    VARCHAR(15) NOT NULL,
    PROFITPERCENT  DECIMAL(4,2) NOT NULL,
    UNITMEASURE    VARCHAR(10) NOT NULL,
    QTYONHAND      DECIMAL(8) NOT NULL,
    REORDERLVL     DECIMAL(8) NOT NULL,
    SELLPRICE      DECIMAL(8,2) NOT NULL CHECK (SELLPRICE <> 0),
    COSTPRICE      DECIMAL(8,2) NOT NULL CHECK (COSTPRICE <> 0)
);

INSERT INTO PRODUCT_MASTER1 (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNITMEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE)
VALUES
('P001', 'Widget A', 15.00, 'Piece', 100, 20, 570.00, 40.00),
('P002', 'Gadget B', 20.00, 'Box', 200, 340, 30.00, 25.00),
('P003', 'Thingamajig', 10.00, 'Set', 150, 25, 70.00, 60.00),
('P004', 'Doodad', 12.50, 'Piece', 300, 580, 606.00, 10.00),
('P005', 'Gizmo', 18.00, 'Piece', 400, 60, 80.00, 70.00),
('P006', 'Whatchamacallit', 25.00, 'Pack', 250, 40, 900.00, 90.00);

SELECT * FROM PRODUCT_MASTER1;
DROP TABLE PRODUCT_MASTER1;
SELECT * FROM PRODUCT_MASTER1 WHERE SELLPRICE > 500 AND SELLPRICE <= 750;

SELECT PRODUCTNO, DESCRIPTION, SELLPRICE, SELLPRICE * 1.15 AS new_price FROM PRODUCT_MASTER1 WHERE SELLPRICE > 500;
SELECT AVG(SELLPRICE) AS Average_Price FROM PRODUCT_MASTER1;

SELECT MAX(SELLPRICE) AS max_price, MIN(SELLPRICE) AS min_price FROM PRODUCT_MASTER1;

SELECT COUNT(PRODUCTNO)  FROM PRODUCT_MASTER1 WHERE SELLPRICE <= 500;
SELECT DESCRIPTION FROM PRODUCT_MASTER1 WHERE QTYONHAND < REORDERLVL;



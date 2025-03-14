USE CHAPTER;
CREATE TABLE CLIENT_MASTER1 (
    CLIENTNO    VARCHAR(6) CONSTRAINT CHECK (CLIENTNO LIKE 'C%'),
    NAME        VARCHAR(20) NOT NULL,
    ADDRESS1    VARCHAR(30),
    ADDRESS2    VARCHAR(30),
    CITY        VARCHAR(20),
    STATE       VARCHAR(20),
    PINCODE     DECIMAL(6),
    BALDUE      DECIMAL(8,2)
);
INSERT INTO CLIENT_MASTER1 (CLIENTNO, NAME, ADDRESS1, ADDRESS2, CITY, STATE, PINCODE, BALDUE)
VALUES
('C001', 'John Doe', '123 Main St', 'Apt 4B', 'Mumbai', 'Mahaarstra', 4000, 5000.00),
('C002', 'Jane Smith', '456 Elm St', 'Suite 200', 'Bengalore', 'Karnatak', 1000, 30000.50),
('C003', 'Ahmed Khan', '789 Oak St', NULL, 'Mumbai', 'Maharastra', 3100, 750.75),
('C004', 'Maria Garcia', '321 Pine St', 'Floor 3', 'Bangalore', 'Karnatak', 6000, 12050.00);

SELECT *FROM CLIENT_MASTER1;

SELECT NAME FROM CLIENT_MASTER1 WHERE NAME LIKE '_a%';

SELECT NAME  FROM Client_Master  WHERE NAME LIKE '_a%';
SELECT * FROM CLIENT_MASTER1 WHERE CITY IN ('Bangalore', 'Mangalore');
DROP TABLE CLIENT_MASTER1;
SELECT * 
FROM CLIENT_MASTER1 WHERE BALDUE > 10000;

SELECT NAME, CITY, STATE FROM CLIENT_MASTER1 WHERE NOT STATE= 'Maharashtra';




# 1) 2NF이다.
# 2) 키가 아닌 컬럼끼리 종속되면 안됨(이행적 종속)

USE mydb1;
DROP TABLE customer;



CREATE TABLE customer(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(3),
    last_name VARCHAR(3),
    level INT,
    FOREIGN KEY (level) REFERENCES customer_benefit(level)
);

CREATE TABLE customer_benefit(
    level INT PRIMARY KEY,
    benefit VARCHAR(100)
);

INSERT INTO customer (first_name, last_name, level)
VALUES ('son','hm',1),('lee','ki',1),
       ('kik','hs',2),('lee','jh',2), ('cap','ste',3);
SELECT * FROM customer;

INSERT INTO customer_benefit (level, benefit)
VALUES (1,'무료배송'),(2,'할인'),(3,'라운지');
SELECT  * FROM customer_benefit;

SELECT * FROM customer,customer_benefit WHERE customer.level = customer_benefit.level;

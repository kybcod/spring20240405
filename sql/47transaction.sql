USE mydb2;

CREATE TABLE bank(
    name VARCHAR(3) PRIMARY KEY ,
    money INT NOT NULL
);

INSERT INTO bank VALUES ('흥민', 10000), ('강인', 10000);
SELECT * FROM bank;

UPDATE bank
SET money = money - 500
WHERE name = '강인';

UPDATE bank
SET money = money + 500
WHERE name = '흥민';

/*Transaction 시작*/
START TRANSACTION;
COMMIT; #모두 성공(반영)

START TRANSACTION;
ROLLBACK ; # 모두 실패(반영하지 않음, 트랜잭션 시작 전으로 돌림)

SELECT * FROM w3schools.Customers ORDER BY CustomerID DESC ;



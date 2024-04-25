# 사용할 데이터베이스(스키마) 선택하기
USE w3schools;
SHOW TABLES;

# 새 데이터베이스 만들기
CREATE DATABASE mydb1;
USE mydb1;
SHOW TABLES ;

CREATE TABLE my_table1(
    name VARCHAR(3),
    age INT
);


CREATE DATABASE mydb2;
USE mydb2;
CREATE TABLE my_table2(
    name VARCHAR(3),
    age INT
);
SHOW TABLES ;

# SELECT * From mydb1.my_table1;

DROP DATABASE mydb2;
DROP DATABASE mydb1;

CREATE DATABASE mydb2;
USE mydb2;

CREATE TABLE table1(
    col_a INT
);

CREATE TABLE table2(
    col_b INT
);

INSERT INTO table1 VALUES (1),(2),(3),(4);
INSERT INTO table2 VALUES (2),(2),(3),(4),(5);

SELECT * FROM table1;
SELECT * FROM table2;

#JOIN : 2 개(이상)의 테이블을 결합
# 컬럼 수 : 두 테이블의 컬럼 수의 합
# 행(레코드) 수 : 두 테이블의 행의 곱 -> cartesian product

SELECT * FROM table1 JOIN table2;

# INNER JOIN : 두 테이블에 있는 값만
SELECT * FROM table1 JOIN table2 ON col_a = col_b;
SELECT * FROM table1 JOIN table2 WHERE col_a = col_b;

CREATE TABLE table3(col_a INT);
CREATE TABLE table4(col_b INT);
INSERT INTO table3 VALUES (5),(6),(7);
INSERT INTO table4 VALUES (7),(6),(7),(8);
SELECT * FROM table3 JOIN table4; #12
SELECT * FROM table3 JOIN table4 ON col_a = col_b;

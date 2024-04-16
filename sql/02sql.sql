SELECT * FROM w3schools.Employees;

# 명령문 종료는 ; 꼭 사용
SELECT * FROM w3schools.Customers;

# TABLE : 데이터들이 저장되는 공간
# 행(records, data, row), 열(field, attribute, col)로 이루어져 있음

# schema(database) : table들이 정의되어 있는 곳
# schema(database) 만들기
CREATE DATABASE test1;

# 새 테이블 만들기
CREATE TABLE test1.test(
    id int,
    name varchar(20)
);

# 데이터 베이스명.테이블명
SELECT * from test1.test;

# 현재 사용중인 DB 선택
USE test1;

SELECT * FROM test;

# 다른 데이터베이스의 테이블은 생략 못함
select *
from w3schools.Customers;

USE w3schools;
select * from w3schools.Customers
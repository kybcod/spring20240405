USE w3schools;

# CREATE TABLE : 새 테이블 만들기 테이블 생성시 컬럼들 정의 해야 함
# CREATE TABLE 테이블명(
#     컬러명1 컬럼 타입,
#     컬럼명2, 컬럼 타입,
# )

# 테이블명, 컬럼명 : (upper/lower)스네이크케이스
# UPPER_SNAKE_CASE, lower_snake_case

CREATE TABLE my_table1(
    address varchar(30),
    city varchar(50),
    country varchar(20)
);

INSERT INTO my_table1 VALUES ('신촌','서울','한국');
SELECT * FROM my_table1;
DESCRIBE my_table1;

CREATE TABLE my_table2(
    name varchar(30),
    age varchar(30)
);
DESC my_table2;
INSERT INTO my_table2 VALUES ('흥민','33');
SELECT * FROM my_table2;


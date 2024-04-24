USE w3schools;

# 문자열 : VARCHAR(길이)
CREATE TABLE my_table3(
    name VARCHAR(3),
    title VARCHAR(5),
    notes VARCHAR(1000)
);
DESC my_table3;
INSERT INTO my_table3 VALUES ('이강인', '축구선수','파리생제르망');
INSERT INTO my_table3 VALUES ('네이마르', '축구선수','사우디아라비아');
SELECT * FROM my_table3;

CREATE TABLE my_table4(
    title varchar(20),
    content varchar(50),
    author varchar(5)
);
DESC my_table4;

INSERT INTO my_table4 VALUES ('나는 읽고 쓰고 버린다', '내게 독서란 책이 아니라, 사람을 남기는 것이다.','손웅정');
SELECT * FROM my_table4;

# 수
# 정수 INT
# 실수 DECIMAL, DEC(총길이, 소수점이하길이)
CREATE TABLE my_table5(
    age INT,
    height DEC(5,2)
);
DESC my_table5;

INSERT INTO my_table5 VALUES (10, 170.25);
SELECT * FROM my_table5;
INSERT INTO my_table5 VALUES (10, 1000.25); # 총 숫자의 개수가 5개로 정해놨는데 5개를 넘어가서 에러
INSERT INTO my_table5 VALUES (10,170.333);
INSERT INTO my_table5 VALUES (10,170.339); #반올림(170.34)

CREATE TABLE my_table6(
    age INT,
    weight DEC(4,2)
);
DESC my_table6;

INSERT INTO my_table6 VALUES (10, 34.56);
INSERT INTO my_table6 VALUES (10, 30.5644);
SELECT * FROM my_table6;

# 날짜시간
# DATE : 날짜(YYYY-MM-DD)
# DATETIME : 날짜시간(YYYY-MM-DD HH:MM:SS)
CREATE TABLE my_table7(
    cola DATE,
    col2 DATETIME
);
DESC my_table7;
INSERT INTO my_table7 VALUES ('1990-02-03','2020-02-03 22:10:10');
SELECT * FROM my_table7;

CREATE TABLE my_table8(
    col1 DATE,
    col2 DATETIME
);
INSERT INTO my_table8 VALUES ('1999-02-03','2001-02-03 23:10:10');
SELECT * FROM my_table8;

CREATE TABLE my_table9(
    string_col VARCHAR(30),
    int_col INT,
    dec_col DEC(10,2),
    date_col DATE,
    date_time_col DATETIME
);

INSERT INTO my_table9 VALUES ('곧 점심시간', 50000, 54321.98, '2024-02-02','1888-08-01 19:20:20');
SELECT * FROM my_table9;
DESC my_table9;

CREATE TABLE my_table10(
    title varchar(30),
    name varchar(30),
    age INT,
    price DEC(10, 3),
    published DATE,
    inserted DATETIME
);
INSERT INTO my_table10 VALUES ('이것이 자바다', '신용권',40,23433.223,'1999-09-09','1999-10-10 12:33:12'),
                              ('스프링 부트','홍길동', 50, 2342.123,'2024-01-01','2024-02-02 09:33:33');
SELECT * FROM my_table10;


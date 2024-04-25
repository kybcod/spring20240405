USE w3schools;

# PRIMARY KEY : NOT NULL UNIQUE
CREATE TABLE my_table17(
    col1 INT,
    co2 INT PRIMARY KEY -- NOT NULL UNIQUE
);

INSERT INTO my_table17 VALUES (1,1);
INSERT INTO my_table17 VALUES (2,2);
INSERT INTO my_table17 VALUES (3,2); # co2 pk, 에러
INSERT INTO my_table17 VALUES (NULL, 4);
INSERT INTO my_table17 VALUES (4, NULL); # cc2 pk 에러

DESC my_table17;
SELECT * FROM my_table17;

# PRIMARY KEY 제약사항은 한 테이블에 하나만 줄 수 있음
CREATE TABLE my_table18(
    co1 INT PRIMARY KEY,
    co2 INT PRIMARY KEY
); #에러

 CREATE TABLE my_table19(
    co1 INT NOT NULL UNIQUE ,
    co2 INT NOT NULL UNIQUE
); #가능

CREATE TABLE my_table20(
    col1 INT PRIMARY KEY,
    col2 INT NOT NULL UNIQUE
);
DESC my_table19;
DESC my_table20;

# 여러 컬럼 조합으로 PRIMARY KEY 제약사항을 줄 수 있음
CREATE TABLE my_table21(
    col1 INT,
    col2 INT,
    col3 INT,
    PRIMARY KEY (col1, col2)
);
DESC my_table21;
INSERT INTO my_table21 VALUES (1,1,1);
INSERT INTO my_table21 VALUES (1,2,1);
INSERT INTO my_table21 VALUES (2,2,1);
INSERT INTO my_table21 VALUES (NULL,2,1); # 에러

CREATE TABLE my_table22(
    co1 INT PRIMARY KEY,
    co2 INT NOT NULL UNIQUE,
    co3 INT
);

INSERT INTO my_table22 VALUES (1,1,1);
INSERT INTO my_table22 VALUES (2,2,1);
INSERT INTO my_table22 VALUES (2,3,1); #co1 에러
INSERT INTO my_table22 VALUES (4,3,1); #co2 에러
INSERT INTO my_table22 VALUES (2,3,1); #co1,co2 에러
DESC my_table22;

# CHECK, FOREIGN KEY...


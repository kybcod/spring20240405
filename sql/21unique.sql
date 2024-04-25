USE w3schools;

# UNIQUE : 다른 레코드의 컬럼 값이 중복되지 않음
CREATE TABLE my_table15(
    col1 VARCHAR(3),
    col2 VARCHAR(3) UNIQUE
);

INSERT INTO my_table15 VALUES (NULL,NULL);
INSERT INTO my_table15 VALUES ('asd','adf');
INSERT INTO my_table15 VALUES ('asd','asd');
INSERT INTO my_table15 VALUES ('aaa','asd'); #col2에 이미 asd가 존재하기 때문에 에러
INSERT INTO my_table15 VALUES ('asd','ass');
INSERT INTO my_table15 (col1) VALUES ('ggg');
INSERT INTO my_table15 (col2) VALUES ('ggg');

SELECT * FROM my_table15;

DESC my_table15;

CREATE TABLE my_table16(
    co1 VARCHAR(10),
    co2 VARCHAR(10) UNIQUE,
    co3 VARCHAR(10) NOT NULL UNIQUE
);
INSERT INTO my_table16 VALUES ('123','321','124');
INSERT INTO my_table16 (co2, co3) VALUES ('456','124'); #co3는 UNIQUE 124 중복
INSERT INTO my_table16 (co2, co3) VALUES ('456','125');
INSERT INTO my_table16 (co2, co3) VALUES ('456','120'); #co2는 UNIQUE 456 중복
INSERT INTO my_table16 (co1, co2) VALUES ('456','120'); #co3 NOT NULL 이므로 값이 없ㅇ면 안됨
INSERT INTO my_table16 (co1, co2, co3) VALUES (NULL,NULL,'afeio'); #co1,2는 not null아니다

DESC my_table16;
SELECT * FROM my_table16;
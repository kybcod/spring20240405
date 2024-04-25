USE w3schools;

# DEFAULT : 값을 주지 않을 때의 기본값을 정의
CREATE TABLE my_table13(
    col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'abc'
);

INSERT INTO my_table13 (col1) VALUES ('def'); #co2는 기본값 abc 값이 들어가져 있다.
SELECT * FROM my_table13;
DESC my_table13;

INSERT INTO  my_table13 VALUES ('jkl',NULL);

CREATE TABLE my_table14(
    col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL,
    col3 INT(10) DEFAULT 10,
    col4 INT(10) NOT NULL DEFAULT 0
);

INSERT INTO my_table14 VALUES ('avc','aaa',22,12);
INSERT INTO my_table14 (col1,col2,col4) VALUES ('avds','haha',123);
SELECT * FROM my_table14;

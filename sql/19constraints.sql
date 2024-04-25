USE w3schools;

# 특정 컬럼에 제약사항을 줌(예 : 꼭 값이 있어야 함, 기본값, 중복불가)
# NOT NULL : 꼭 값이 있어야 함
CREATE TABLE my_table11(
    col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL
);

DESC my_table11;

INSERT INTO my_table11 VALUES ('value1','value2');
INSERT INTO my_table11 (col2) VALUES ('value3');
INSERT INTO my_table11 (col1) VALUES ('value4'); # 두번째 컬럼에 값이 넣지 않아 에러

SELECT * FROM my_table11;
SELECT * FROM my_table11 WHERE col2='value3';

# 특정 컬럼이 NULL인 레코드 조회할 때 IS NULL 연산자 사용
SELECT * FROM my_table11 WHERE col1 IS NULL;

# NULL 값이 아닌 값이 있는 레코드 조회
SELECT * FROM my_table11 WHERE col1 IS NOT NULL;

CREATE TABLE my_table12(
    id VARCHAR(10) NOT NULL,
    name VARCHAR(10)
);

INSERT INTO my_table12 VALUES ('hello', 'kim');


USE w3schools;

# ALTER TABLE : 테이블 구조 변경

# 컬럼 추가
CREATE TABLE my_table23(
    name VARCHAR(3),
    age INT
);
INSERT INTO my_table23 VALUES ('son',44),('lee',33);
ALTER TABLE my_table23 ADD COLUMN address VARCHAR(30);
# address 추가 전 이미 name, age에 값이 있던 곳에는 address는 Null이다.
ALTER TABLE my_table23 ADD COLUMN city VARCHAR(10) DEFAULT 'seoul';
ALTER TABLE my_table23 ADD COLUMN country VARCHAR(10) NOT NULL; #빈스트링이 들어가져 있음
ALTER TABLE my_table23 ADD COLUMN price INT NOT NULL; #0 들어가져 있음
ALTER TABLE my_table23 ADD COLUMN state VARCHAR(20) NOT NULL UNIQUE; #0 들어가져 있음

ALTER TABLE my_table23 ADD COLUMN birth DATE AFTER age;

DESC my_table23;

# 컬럼 삭제 (주의!!)
ALTER TABLE my_table23 DROP COLUMN state;
ALTER TABLE my_table23 DROP COLUMN city;


# 컬럼 변경(이름 변경(주의), 자료형/제약사항 변경)
# 이름
ALTER TABLE my_table23 RENAME COLUMN address TO town;
ALTER TABLE my_table23 RENAME COLUMN birth TO birth_date;

# 자료형
ALTER TABLE my_table23 MODIFY COLUMN price DEC(20,2);
ALTER TABLE my_table23 MODIFY COLUMN name VARCHAR(30);
# 타입 변경 시 주의할 점 : 테이터를 잃어버리지 않도록 주의
INSERT INTO my_table23 (name, country) VALUES ('12345678910112312423','coun');
ALTER TABLE my_table23 MODIFY COLUMN name VARCHAR(10); # 이미 10을 초과하는 값이 있기 때문에 길이 변경 불가능

# 제약사항 변경
ALTER TABLE my_table23 MODIFY COLUMN name VARCHAR(20) UNIQUE;
ALTER TABLE my_table23 MODIFY COLUMN age INT UNIQUE;

# UNIQUE 제약사항 삭제하기
SHOW index FROM my_table23;

ALTER TABLE my_table23 DROP INDEX age;
ALTER TABLE my_table23 DROP INDEX name;

# NOT NULL 추가
ALTER TABLE my_table23 MODIFY COLUMN name VARCHAR(20) NOT NULL;
DESC my_table23;

# NOT NULL 삭제
ALTER TABLE my_table23 MODIFY COLUMN name VARCHAR(20) NULL;

SELECT * FROM my_table23;
UPDATE my_table23 SET age = 1 WHERE name='12345678910112312423';

ALTER TABLE my_table23 MODIFY COLUMN age INT NULL;

# DEFAULT 제약사항 추가/삭제
ALTER TABLE my_table23 MODIFY COLUMN name VARCHAR(20) DEFAULT 'guest';

ALTER TABLE my_table23 ALTER COLUMN name DROP DEFAULT;
ALTER TABLE my_table23 MODIFY COLUMN age INT DEFAULT '10';
ALTER TABLE my_table23 ALTER COLUMN age DROP DEFAULT;

#PRIMARY KEY 제약사항 추가/삭제
ALTER TABLE my_table23 ADD PRIMARY KEY (name);
ALTER TABLE my_table23 DROP PRIMARY KEY ;
ALTER TABLE my_table23 MODIFY COLUMN name VARCHAR(20) NULL;
ALTER TABLE my_table23 ADD PRIMARY KEY (age);
ALTER TABLE my_table23 DROP PRIMARY KEY;

DESC my_table23;


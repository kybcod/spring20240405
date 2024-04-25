USE mydb1;
DROP TABLE board;
DROP TABLE member;
DROP TABLE board_like;

CREATE TABLE board(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(20),
    content VARCHAR(20)
);

CREATE TABLE member(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(20),
    info VARCHAR(20)
);

# 다대다 관계의 테이블의 중간테이블 생성
CREATE TABLE board_like(
    board_id INT REFERENCES board(id),
    member_id INT REFERENCES member(id),
    PRIMARY KEY (board_id, member_id)
);
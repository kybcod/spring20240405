USE mydb2;

# LEFT (OUTER) JOIN
# INNER JOIN + 왼쪽 테이블에만 있는 레코드

SELECT * FROM table1; #1,2,3,4
SELECT * FROM table2; #2,2,3,4,5

SELECT * FROM table1 JOIN table2 ON col_a = col_b;

SELECT * FROM table1 LEFT JOIN table2 ON col_a = col_b;
SELECT * FROM table1 RIGHT JOIN table2 ON col_a = col_b;

INSERT INTO table1 VALUES (1),(2),(2),(3),(4);
INSERT INTO table2 VALUES (3),(4),(5),(5);

SELECT * FROM table1 JOIN table2 ON col_a = col_b;
SELECT * FROM table1 LEFT JOIN table2 ON col_a = col_b;

SELECT * FROM table3;
SELECT * FROM table4;

INSERT INTO table3 VALUES (4),(5),(6),(3);
INSERT INTO table4 VALUES (5),(6),(7),(7),(8);

SELECT * FROM table3 JOIN table4; #20
SELECT * FROM table3 JOIN table4 ON col_a = col_b; #(5,5),(6,6)
SELECT * FROM table3 Left JOIN table4 ON col_a = col_b; #(5,5),(6,6),(4,null),(3,null)
SELECT * FROM table3 RIGHT JOIN table4 ON col_a = col_b; #(5,5),(6,6),(null,7),(null,7),(null,8)


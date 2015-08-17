DELIMITER //
CREATE PROCEDURE insert_class()
BEGIN
DECLARE i int;
SET i = 0;
WHILE i <= 5 do
INSERT INTO class(class_name) VALUES(concat("class", i));
SET i = i + 1;
END while;
END //
DELIMITER ;

CALL insert_class();

DELIMITER //
CREATE PROCEDURE insert_subject()
BEGIN
DECLARE i int;
SET i = 0;
WHILE i < 10 do
INSERT INTO subject(subject_name) VALUES(concat("subject", i));
SET i = i + 1;
END while;
END //
DELIMITER ;

CALL insert_subject();

DELIMITER //
CREATE PROCEDURE insert_student()
BEGIN
DECLARE i int;
SET i = 0;
WHILE i < 50 do
INSERT INTO student(student_name,student_sex,class_id) VALUES(concat("student", i),IF(i%2=0,"male","female"),i%5+1);
SET i = i + 1;
END while;
END //
DELIMITER ;

CALL insert_student();

DELIMITER //
CREATE PROCEDURE insert_student_subject()
BEGIN
DECLARE i int;
DECLARE x int;
SET i = 1;
WHILE i <= 50 do
SET x = 0;
WHILE x < 5 do
INSERT INTO student_subject(student_id,subject_id) VALUES(i,(x+i-1)%10+1);
SET x = x + 1;
END WHILE;
SET i = i + 1;
END while;
END //
DELIMITER ;

CALL insert_student_subject();

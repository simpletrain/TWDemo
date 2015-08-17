SELECT * FROM schedule;

SELECT class.class_name AS "班级",count(student.student_id) AS "人数" FROM student,class WHERE student.class_id = class.class_id GROUP BY class.class_id;

SELECT class.class_name AS "班级",sum(student.student_sex="male") AS "男",sum(student.student_sex="female") AS "女" FROM student,class WHERE student.class_id = class.class_id GROUP BY class.class_id;

DELETE expect FROM student expect INNER JOIN (SELECT * FROM student LIMIT 30,10) result on expect.student_id = result.student_id;
DELETE expect FROM student expect INNER JOIN (SELECT * FROM student LIMIT 29,11) result on expect.id = result.id;

UPDATE student SET student_sex="female";

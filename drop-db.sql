USE TWDemo;

ALTER TABLE student DROP FOREIGN KEY fk_student_class;
ALTER TABLE student_subject DROP FOREIGN KEY fk_student_student_subject;
ALTER TABLE student_subject DROP FOREIGN KEY fk_subject_student_subject;

DROP TABLE student;

DROP TABLE class;

DROP TABLE subject;

DROP TABLE student_subject;

USE mysql;

DROP DATABASE TWDemo;

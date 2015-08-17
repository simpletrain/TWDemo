USE TWDemo;

ALTER TABLE student DROP FOREIGN KEY fk_student_class;
ALTER TABLE student DROP FOREIGN KEY fk_student_schedule;
ALTER TABLE schedule_subject DROP FOREIGN KEY fk_subject_schedule_subject;
ALTER TABLE schedule_subject DROP FOREIGN KEY fk_schedule_schedule_subject;

DROP TABLE student;

DROP TABLE class;

DROP TABLE schedule;

DROP TABLE subject;

DROP TABLE schedule_subject;

USE mysql;

DROP DATABASE TWDemo;

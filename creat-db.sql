CREATE DATABASE TWDemo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE TWDemo;

CREATE TABLE IF NOT EXISTS student(
 student_id int(4) not null primary key auto_increment,
 student_name varchar(20) not null,
 student_sex varchar(6) not null ,
 class_id int(4) not null
);

CREATE TABLE IF NOT EXISTS class(
 class_id int(4) not null primary key auto_increment,
 class_name char(20) not null
);

CREATE TABLE IF NOT EXISTS subject(
 subject_id int(4) not null primary key auto_increment,
 subject_name char(20) not null,
 UNIQUE (subject_name)
);

CREATE TABLE IF NOT EXISTS student_subject(
 student_subject int(4) not null primary key auto_increment,
 student_id int(4) not null,
 subject_id int(4) not null
);

CREATE VIEW schedule AS (
  SELECT student.student_name AS '学生姓名',
  subject.subject_name AS '科目'
  FROM student,subject,student_subject
  WHERE student.student_id = student_subject.student_id AND subject.subject_id = student_subject.subject_id
);

ALTER TABLE student
ADD CONSTRAINT fk_student_class
FOREIGN KEY (class_id)
REFERENCES class(class_id);

ALTER TABLE student_subject
ADD CONSTRAINT fk_student_student_subject
FOREIGN KEY (student_id)
REFERENCES student(student_id);

ALTER TABLE student_subject
ADD CONSTRAINT fk_subject_student_subject
FOREIGN KEY (subject_id)
REFERENCES subject(subject_id);

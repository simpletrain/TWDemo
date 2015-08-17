CREATE DATABASE TWDemo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE TWDemo;

CREATE TABLE IF NOT EXISTS student(
 student_id int(4) not null primary key auto_increment,
 student_name varchar(20) not null,
 student_sex varchar(6) not null ,
 class_id int(4) not null,
 schedule_id int(4) not null
);

CREATE TABLE IF NOT EXISTS schedule(
 schedule_id int(4) not null primary key auto_increment,
 student_id int(4) not null
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

CREATE TABLE IF NOT EXISTS schedule_subject(
 schedule_subject_id int(4) not null primary key auto_increment,
 schedule_id int(4) not null,
 subject_id int(4) not null
);

ALTER TABLE student
ADD CONSTRAINT fk_student_class
FOREIGN KEY (class_id)
REFERENCES class(class_id);

ALTER TABLE student
ADD CONSTRAINT fk_student_schedule
FOREIGN KEY (schedule_id)
REFERENCES schedule(schedule_id);

ALTER TABLE schedule_subject
ADD CONSTRAINT fk_subject_schedule_subject
FOREIGN KEY (subject_id)
REFERENCES subject(subject_id);

ALTER TABLE schedule_subject
ADD CONSTRAINT fk_schedule_schedule_subject
FOREIGN KEY (schedule_id)
REFERENCES schedule(schedule_id);

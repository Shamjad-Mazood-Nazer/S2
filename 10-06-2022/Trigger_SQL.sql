create database TRIG;
use TRIG;
CREATE TABLE Student(
tid int(4) NOT NULL PRIMARY KEY auto_increment,
name varchar(30),
subj1 int(2),
subj2 int(2),
subj3 int(2),
total int(3),
per int(3)
);
desc Student;

create trigger marks 
before 
INSERT 
on Student 
for each row 
set new.total = new.subj1 + new.subj2 + new.subj3, new.per = new.total * 60 / 100;

insert into Student values(36, "JAD", 28, 35, 40, 0, 0);
select * from student;

#drop table student;

create table marks(mark_id int primary key auto_increment,
name varchar(20),
total_mark int
);

create trigger mark_trigger
after
INSERT
on Student
for each row
insert into marks(name, total_mark) values (new.name, new.total);

insert into student (tid, name, subj1, subj2, subj3)values(37, "SHEFANY", 35, 36, 42), (93, "JADSPRIT", 25, 24, 20);
select * from marks;

#drop trigger <trigger_name>
#drop table marks;
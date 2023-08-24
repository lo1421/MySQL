create table if not exists  students (id int primary key,name varchar(20),classId int);
insert into students values
(1,'张三',1),
(2,'李四',1),
(3,'王五',2),
(4,'赵六',2);
create table if not exists class (classId int,name varchar(20));
insert into class values(1,'java100'),(2,'java101');
select * from students;
select * from class;

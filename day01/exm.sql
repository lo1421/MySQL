create database if not exists java;

use java;

drop table if exists classes;
drop table if exists student;
drop table if exists course;
drop table if exists score;

create table classes (id int primary key auto_increment,name varchar(20),`desc` varchar(100));
create table student (id int primary key auto_increment,sn varchar(20),name varchar(20),qq_mail varchar(20),class_id int);
create table cource (id int primary key auto_increment,name varchar(20));
create table score (score decimal(3,1),student_id int,cource_id int);

insert into classes (name,`desc`)values 
('计算机系2019级1班','学习了解计算机原理、c和java语言、数据结构和算法'),
('中文系2019级3班','学习中国传统文学'),
('自动化2019级5班','学习了解机械自动化');

insert into student (sn,name,qq_mail,class_id) values
('09982','黑旋风李逵','xuanfeng@qq.com',1),
('00835','菩提老祖',null,1),
('00391','白素贞',null,1),
('00031','许仙','xuxian@qq.com',1),
('00054','不想毕业',null,1),
('51234','好好说话','say@qq.com',2),
('83223','tellme',null,2),
('09527','老外学中文','foreigner@qq.com',2);

insert into cource(name) values
('java'),('中国传统文化'),('计算机组成原理'),('语文'),('高等数学'),('英文');

insert into score(score,student_id,cource_id) values
-- 黑旋风李逵
(70.5,1,1),(98.5,1,1),(33,1,5),(98,1,6),
-- 菩提老祖
(60,2,1),(59.5,2,5),
-- 白素贞
(33,3,1),(68,3,3),(99,3,5),
-- 许仙
(67,4,1),(23,4,3),(56,4,5),(72,4,6),
-- 不想毕业
(81,5,1),(37,5,5),
-- 好好说话
(56,6,2),(43,6,4),(79,6,6),
-- tellme
(80,7,2),(92,7,6);

show tables;

select * from student;
select * from classes;
select * from cource;
select * from score; 


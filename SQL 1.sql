create database new_db;

Use new_db;

create table data(
roll_no int primary key,
name varchar(20),
marks int,
grade varchar(1),
city varchar(20)
);

insert into data values(1,'Anthony',78,'C','Pune')

select * from data;

insert into data(roll_no,name,marks,grade,city)
values
(2,'Bhumika',93,'A','Mumbai'),
(3,'Chethan',85,'B','Mumbai'),
(4,'Dhruv',96,'A','Delhi'),
(5,'Lethan',33,'F','Delhi'),
(6,'Zoya',82,'B','Pune');

select name from data where marks=85;
select name from data where grade='c';
select city from data;
select distinct city from data;
select city from data where marks>85;
select name from data where marks>80;
select * from data;

select name from data where marks>85 and city='Mumbai';
select name from data where marks>90 or city='Mumbai';
select name from data where city not in('Mumbai','delhi');
select name from data where city in('Mumbai');
select * from data;

select name from data where marks >90;
select name from data where marks between 85 and 95;
select name from data order by marks desc limit 3;
select * from data order by marks desc limit 3;
select * from data order by city;
select * from data order by marks asc;
select * from data order by name desc;
select city from data order by marks asc;
select * from data;

select max(marks) from data;
select min(marks) from data;
select avg(marks) from data;
select count(name) from data;
select sum(marks) from data;

select city,count(name) from data group by city;
select marks,count(name) from data group by marks;
select city,avg(marks)from data group by city;
select city,avg(marks) from data group by city order by avg(marks);
select city,avg(marks) from data group by city order by avg(marks) desc;
select grade,count(roll_no) from data group by grade order by grade;

select count(name), city from data group by city having max(marks)>85;
select count(name),city from data group by city;
select city from data where grade='A' group by city;
select city from data where grade='A' group by city having max(marks)>95;
select * from data;

alter table data add column age int;
alter table data drop column age;
alter table data change marks score int;
alter table data rename to info;

select * from info;
set sql_safe_updates=0;
update info set grade='O' where grade='A';
update info set score=66 where roll_no=5;
update info set grade='D' where roll_no=5;
select * from info;

Select avg(score) from info;
select name from info where score>83.33;
select name from info where score>(select avg(score) from info);
select max(score) from info where city='Delhi';

select roll_no from info where roll_no%2=0;
select name,roll_no from info where roll_no in (select roll_no from info where roll_no%2=0);

select * from info;
create view viewl as select roll_no,name,score from info;
select * from viewl;

select * from info;
truncate table info;
select * from info;
drop table info;
show tables;


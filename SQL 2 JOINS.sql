use new_db;

create table course_details(
id int primary key,
course varchar(20)
);

insert into course_details(id, course)
values
(100,'English'),
(101,'Maths'),
(102,'Science'),
(103,'Computers'),
(104,'Physics'),
(105,'Chemistry');

select * from course_details;

create table student_data(
student_id int primary key,
name varchar(20)
);

insert into student_data(student_id,name)
values
(101,'Adam'),
(102,'Catherin'),
(103,'Charlie');

select * from student_data;

select * from course_details inner join student_data on course_details.id=student_data.student_id;
select * from course_details right join student_data on course_details.id=student_data.student_id;
select * from course_details left join student_data on course_details.id=student_data.student_id;
select * from course_details right join student_data on course_details.id=student_data.student_id union 
select * from course_details left join student_data on course_details.id=student_data.student_id;

select * from course_details left join student_data on course_details.id=student_data.student_id where student_data.student_id is null;
select * from course_details right join student_data on course_details.id=student_data.student_id where course_details.id is null;
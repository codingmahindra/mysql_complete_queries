
#foreign key
use student;
create table student10(
student_number int primary key,
student_name varchar(20) not null,
student_adhaar bigint unique ,
student_pan varchar(20) unique,
student_ncity varchar(30) default "pothavaram" ,
student_ccity varchar(30) default "hyderabad"
);

select *from student10;
insert into student10 (student_number,student_name ,student_adhaar,student_pan,student_ncity,student_ccity) values
(01,"mahi",611697178946,"GSDPM9410F",default,default);


create table course2(
course_name varchar(20) primary key,
student_number int not null,
student_adhaar bigint not null,
foreign key (student_number) references student10(student_number),
foreign key (student_adhaar) references student10(student_adhaar)
); 


# on update cascade and on delete cascade 
create table student11(
student_number int primary key,
student_name varchar(20) not null,
student_adhaar bigint unique ,
student_pan varchar(20) unique,
student_ncity varchar(30) default "pothavaram" ,
student_ccity varchar(30) default "hyderabad"
); 

select *from student11;
insert into student11 (student_number,student_name,student_adhaar,student_pan,student_ncity,student_ccity) values
(2,"maha",661697178946,"gsdpm8910f",default,default);


create table course3(
course_name varchar(20) primary key,
student_number int not null,
student_adhaar bigint not null,
foreign key (student_number) references student11(student_number) on update cascade on  delete cascade,
foreign key (student_adhaar) references student11(student_adhaar)
); 

select *from student11;
select *from course3;
insert into course3 (course_name,student_number,student_adhaar) values ("pfs",2,661697178946);
drop table course3; 

update  student11 set student_number = 6

where student_number = 1;

delete from student11 where student_number = 2;






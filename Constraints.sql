use student; # create database syntax : create database database name 
drop table student1; # if the table exists to drop (delete the table ) 
 
 #constraints
 
create table student1 (
student_roll_number int not null , # synatax :-column name datatype constraint here (student_roll_number is column name int is a datatype and not null is constraint)
student_name varchar(20)  not null , # varchar is a datatype is used to combination of number and characters or characters 
student_adhaar  bigint unique, # unique is number of times used unique it is not accepting null values and not repaeating 
student_pan varchar(30) unique , 
student_age int not null,
primary key (student_roll_number),
check (student_age > 18 and student_age < 30) #check constraint is used to put one condition 
);


select *from student1;	

#inserting values into table 
insert into student1 (student_roll_number,student_name,student_adhaar,student_pan,student_age) values ( 2,"mahi",611697178946,"GSDPM9410F",23),(3,"maha",611697178972,"GSDPM9610F",26),(6,"maa",null,"null",25);

select *from student1;

#Note point : difference between primary key and unique  primary key does (not null + unique) and unique means only unique  and other main difference (unique accepts once "null value " );


create table department (
dept_name varchar(20) primary key,
student_roll_number int,
foreign key (student_roll_number) references student1(student_roll_number)
);

select *from department;
insert into department values ("cs", 2);
select *from department ;



use student;
create table reference (
course_id int,
course_fee int ,
course_duration int default 6,
primary key (course_id),
check(course_fee >= 26000 and course_fee <= 32000)
);

drop table reference;
select *from reference;

insert into reference values(01,26000,6),(02,25000,6);
insert into reference values(04,25000,6);


#using all constraints to crate a table 
create table student8(
student_number int primary key,
student_name varchar(10) not null,
student_adhaar bigint unique, # big int are using to store large values 
student_pan varchar(30) unique,
student_city varchar(20) default "hyderabad", #default keyword is using for putting value as default. while inserting value on that we are using only default keyword
student_age int ,
check(student_age > 18 and student_age < 100)
);

select *from student8;

insert into student8 (student_number,student_name ,student_adhaar, student_pan,student_age) values ( 01,"mahi",611697178946,"GSDPM9410f",23);
insert into student8 values (2,"maha" , 611697198946 ,"GSDPM9412f"," ", 26);
INSERT INTO student8
VALUES (3, 'maa', 611697199946, 'GSfPM9412f', DEFAULT, 23);


select *from student8;

 
 
 





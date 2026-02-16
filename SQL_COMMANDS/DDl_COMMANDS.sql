create database mahi;
# in ddl(data defination language)
/*
1)create :- to create the table 
2)drop : - delete the table in the database permently
3)alter : do perform operation(add column, rename the column,modify the data)
4)truncate : it is mainly to use all rows at once 
*/

/*
 create table tablename(
 column_name datatype constraint,
 )
 */
 
 create table student(
 stud_id int primary key,
 stud_name varchar(30) not null,
 stud_adhaar bigint unique,
 stud_pan varchar(20) unique
 );
 
 insert into student(stud_id,stud_name,stud_adhaar,stud_pan) values (01,"mahi",611697178946,"GSDPM9410F");
 
 SELECT  *FROM STUDENT;
 
 # 2)DROP
 # TO drop the already table or database 
 drop table student;
 
  create table student(
 stud_id int primary key,
 stud_name varchar(30) not null,
 stud_adhaar bigint unique,
 stud_pan varchar(20) unique
 );
 
 
  SELECT  *FROM STUDENT;
  insert into student(stud_id,stud_name,stud_adhaar,stud_pan) values (01,"mahi",611697178946,"GSDPM9410F");
 
 /* 3)alter
 
 */
 alter table student add age int not null;
 insert into student(stud_id,stud_name,stud_adhaar,stud_pan,age) values (02,"maha",611696178946,"GSDPF9410F",24);
 
 alter table student rename column age to stud_age;
 
 alter table student modify stud_age bigint;
 
 alter table student modify stud_age int;


#alter table student rename table student to student1; 


# 4. truncate

#"truncate"  it is mainly used to all rows in the table 

#sytax : truncate table table_name

truncate table student;

select * from student;
 
 
 
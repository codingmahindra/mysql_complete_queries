# where  and  or 
use student;
select *from emp;

select *from emp where deptno = 30; # where statement is used to checking row condition 

select *from emp where deptno =30 and deptno =20; # note : we dont use and operator same multiple column names 

select *from emp where deptno = 30 or deptno = 20; # reslove the above issuse we use or opeator . we we get same column name details.

select *from emp where deptno = 30 and sal >= 2000; # and operator mainly using for different column details checking.
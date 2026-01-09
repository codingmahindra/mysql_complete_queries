# in operator is used to check multiple values

/*
1)in  -> to check multiple options and to check values in or not on that time checking and produce boolean values if true is represent in 1 other wise represent 0
2)not in -> opposite to in 
3)between -> it is used to represent values including giving values also  eg : below there .
4)not between -> not include giving values 
*/

use student;

select 10 in (10,30,40) as numbers; # if the value is present give boolean true that means to show "1" 

select 20 in (10,30,40,50) as num; # if the given the value is not at list of values 

select null in (10,20,30,40) as num1;#to compare with null to anything is null

select null in (10,20,30,40,null) as num1; # to compare null with null to give output also null

select *from emp where sal   between 800 and 1600; # between means including give values also mentioning 

select *from emp where sal not between 800 and 1600; #only they provide after this condition values only 

select distinct deptno,ename from emp; # to print single time a value no duplication 



#LIKE

/*
1)like is operator . it is using in where condition 
2)in like operator mainly two things '%' , _ ;
3) '%' means o or more values 
4) '_' means only one character 

*/

# in problematic queries

use student;
select *from emp order by job;

select *from emp where job like 'A%';

select *
from emp where job like '%man%';

explain select *
from emp where job like '%man'
order by ename,sal,empno desc ; # HERE THREE COLUMNS BASED ON PERFORM OPERATIONS . HOW THEY EVALUATE.alter

/* IN our recuriment in our question having '_20' how we are checking 
 in these cases we are using escape sequences like '\' and '$'
 when we are using '$'. definately mentined Escape .
 example : my id  is 2347f00D9_25
 
 in above example to check my _25 are there or not 
 
 simple we we check in these way %_25% . editor confuses _(underscore is wildcards or not). then we use escape sequences
 
 from table name where colunmname like '%\_25%'.
 
*/

select *from emp;

select job
from emp where job like 'm_____r'; #_ is used to check one or more characters






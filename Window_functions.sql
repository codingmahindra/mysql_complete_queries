use student;
select *from emp;

#function_name(partion by and order by)

select empno , ename,job,sal,
row_number() over (partition by empno order by sal DESC) as rno from emp;



select empno, ename, job,SAL,DEPTNO,
ROW_NUMBER() over (partition by DEPTNO order by sal) as rno
from emp;




select empno, ename, job,SAL,DEPTNO,
RANK() over (partition by DEPTNO order by sal) as rno
from emp;

select  empno,
DENSE_RANK() over (partition by Deptno order by sal) as dr
from emp;




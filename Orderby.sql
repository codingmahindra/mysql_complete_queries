use student;
select *from emp order by sal asc; #order by default ascending order if want specificy mentioned it is in ascending (asc) or descending order (desc) 

select *from emp order by sal asc , ename asc ; # here to check mutliple conditions intially to check with sal and my another specification based on ename also order 
												#intially based on salary order by , then checking order data by ename 

select *from emp order by 
field(job,'president','manager','analyst','clerk','salesman' ); #customize order                                                 
 
 
													
                                                


select * into Markscopy from marks;
select * from Markscopy;

Insert into Marks
select 1,60,70,80

----find highest of all subjects of a student using a case statement----
select Id,StudentId,(case when Physics > maths and Physics > Chemistry then Physics
                          when Maths  > Physics and Maths > Chemistry then Maths
						  when Chemistry > Maths and  Chemistry > Physics then Chemistry else 0 end) as HighestMark  
						  from Marks;

--case statement can be used in order by clause as well

select Id ,max(marks) as highestMark from (select id ,Physics as Marks from Marks union select
id ,Chemistry from Marks union select id ,Maths from Marks)  x group by Id


--ISNULL | COALESCE also used
Insert into Marks 
select 2 , NULL,NULL , 100  from Marks;

select ISNULL(Physics,0) as Physics, ISNULL(Chemistry,0) as Chemistry ,ISNULL(Maths,0) as Maths from Marks;



						  



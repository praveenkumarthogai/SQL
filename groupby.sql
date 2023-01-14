
--Order of sql clause  ==> Select - Where - Group by - having - order by

Create table StudentMarks(Id int identity(1,1) primary key, Name varchar(100),Marks int ,Subject varchar(100));

select SUM(Marks) as TotalScore , Name  from StudentMarks group by Name having sum(Marks) > 200 order by Sum(Marks) desc;

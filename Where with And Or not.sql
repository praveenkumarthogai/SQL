create table world (id int identity(1,1),Country varchar(100),State varchar(100))

insert into world
select 'USA','NewYork' union select 'USA','chicago' union select 'USA','Mexico';

insert into world
select 'india','Tamilnadu' union select 'india','Andhra' union select 'india','kerala';

select * from world where country ='india' and (state='Andhra' or state ='kerala');

select * from world where Country = 'india' and State = 'Andhra' or State = 'kerala'

select * from world where State != 'Andhra' and State != 'kerala'
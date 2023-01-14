---top 5 records ----

select top 3 * from world

Create table price(Id int identity(1,1) primary key,ProductName varchar(100),Price  decimal)

insert into price
select 'redmi',20000.00 union all select 'oppo',15000.00 union all select 'realme',13500.00


--Max and Min -----
select max(price) as maximumPrice from price;
select  min(price) as minimumPrice from Price;

--Count ----

select count(*) as totalRecords from world

select count(1) as totalRecords from world; --gives the same result as count(*)

--SUM() and AVG() only works for numeric column-----

select Sum(price)  as totalSum from price;
select AVG(price) as AveragePric from price;

----To change database---
use devacc;
---Like Operator--------------- % represents one or more characters | _ underscore represents one character
select * from Students where FatherName like 'M%';
select * from Students where FullName like 'Deepa_';


---In Operator ---It is a shorthand of OR operator----
select * from world where country in ('india','USA')
select * from world where country not in ('india','USA')


---Between is inclusive it includes start and end values as well
--it supports data and number columns
select * from Price where price between 10000 and 17000

--alias 
--AS keyword is used


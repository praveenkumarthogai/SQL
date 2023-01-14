create table Employee(Id int   identity(1,1)   primary key,
                       EmployeeID int ,
					   EmployeeName varchar(100),
					   ManagerId int)

insert into Employee
select 1,'Praveen',5
union all
select 2 , 'Deepak' ,6
union all
select 3 , 'John',6
union all 
select 4 , 'Victor',5
union all
select 5 , 'Pavan',null
union all
select 6 , 'Mark',null

select EmpB.EmployeeName as EmployeeName, EmpA.EmployeeName as ManagerName  from Employee as EmpA inner join Employee as EmpB 
on EmpA.EmployeeId =EmpB.ManagerId;

-----Crosss join-----

create table products(Id int Primary key identity(1,1),ProductName varchar(100))


insert into products
select 'Redmi' union all select 'realme' union all select 'samsung' union all select 'nokia';

create table Model(Id int Primary key identity(1,1), ModelName varchar(100))

insert into Model
select 'SL' union all select 'LG' union all select 'XL' union all select 'XXL'

create table Orders(OrderId int Identity(1,1) primary key,ProductName varchar(100),ModelName varchar(100),NoofItems int)


insert into Orders
select 'Redmi','LG',4 union all select 'Samsung' , 'XL' ,5


select *  from ((select a.ProductName,b.ModelName from products a cross join Model b ) C
left outer join Orders b on C.ProductName = b.ProductName and C.ModelName = b.ModelName)


Create table country(countryId int , CountryName varchar(100))

Insert into country
select  1 , 'India' union all select 2 , 'india' union select 1 , 'India'

--It gives one record 
select distinct countryName from country;


--It gives 2 records i.e distinct combination of countryName and countryId 
select distinct countryName,countryId from country;

--To count of distinct records
select count(distinct countryName) from country
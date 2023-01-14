
select  * from world;
select * from world order by country desc;
select * from world order by country desc,state asc;
--First it will be order by country then if any duplication of same country value then it will be ordered 
--by state
--here country will be ordered by asc order since nothing is specified, for every column asc or desc should be
--specified
--Here second order by column is a tummy column only on duplication of first column it works
select * from world order by country,state desc;



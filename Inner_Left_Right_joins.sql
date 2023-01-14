select * from Students

select * from Marks

---Inner Join ----
--It returns only commmon records 

select * from Students st inner join Marks mk on st.Id = mk.StudentId;

select st.Id,st.FullName,mk.physics,mk.Maths,mk.chemistry from Students st inner join Marks mk on st.Id = mk.StudentId;

select st.fullname,mk.physics,fs.FeesPaid from Students as st inner join  Marks mk on st.id=mk.StudentId 
inner join Fees fs on st.id = fs.StudentID
WHERE mk.StudentId = 1;


----Left Outer Join ------
--it returns all the left side table record and common records from right side if no common records then it will be null for all the columns of right side table

select * from Students st left outer join Marks mk on st.Id = mk.StudentId

----Right outer join ------
select * from Students st right outer join Marks mk on st.Id = mk.StudentId


--union &  union all -----

--union all includes duplicates records as well
--union ignores duplicate records

select 1 as ID , 'Praveen' as Name union select 1 as ID , 'Praveen' as Name;
select 1 as ID ,'Praveen' as Name union all select 1 as ID , 'Praveen' as Name;





--View is a predefined select query or statement it may or may not contains joins with two or more tables 
--it is a db object stored permanently
--View does not support paramters
--you can use where condition with view 
--mainly used for report generation
--avoiding exposing the select queries along with its column name and table name.

Create View [TestView] as (select st.FullName as StudentName,mk.Physics as Physics  
from Students st inner join Marks mk on st.id = mk.studentId);

drop view TestView;


---INdex---


create index idx_DOB on Students(DOB);
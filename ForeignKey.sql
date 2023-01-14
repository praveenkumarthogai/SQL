----Foriegn key

CREATE TABLE Marks(Id int identity(1,1) ,
                   StudentId int,
				   Physics int,
				   Maths int,
				   Chemistry int
				   CONSTRAINT Pk_marks PRIMARY KEY (Id),
				   CONSTRAINT FK_marks Foreign Key (StudentId) REFERENCES Students(Id)
				   )


				   --valid since student id 1 is available in parent table
				   Insert into Marks
				   select 1,90,90,90 

				   --invalid 100 is not a student id in parent table
				   Insert into Marks
				   select 100,60,90,50

				   --Table having primary key is called parent table and table having foreign key is called 
				   --child table
				   --link created between two tables by foreign key of child table
				  
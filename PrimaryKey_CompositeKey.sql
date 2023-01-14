--primary key 

--To identify unique records in the table
--primary key will consists of one column
--no duplicate or null values  allowed

CREATE TABLE Students(Id int ,
                     FullName varchar(100),
					 FatherName varchar(100),
					 MotherName varchar(100),
					 DOB DateTime,
					 Address nvarchar(100),
					 DOJ DateTime,
					 AdharNo bigint
					 CONSTRAINT pk_student PRIMARY KEY (Id));


---composite key 
--To identify unique records in the table
--primary key will consists of Two column
--no duplicate or null values  allowed


CREATE  TABLE StudentsCopy(Id int ,
                     FullName varchar(100),
					 FatherName varchar(100),
					 MotherName varchar(100),
					 DOB DateTime,
					 Address nvarchar(100),
					 DOJ DateTime,
					 AdharNo bigint
					 CONSTRAINT pk_studentCopy PRIMARY KEY (Id,DOB));

INSERT INTO Students
--SELECT 1,'Praveen','Murugesan','Umavathi',getDate(),'chennai',getDate(),586485858585
SELECT 2,'deepak','Murugesan','Umavathi',getDate(),'chennai',getDate(),6857541239

INSERT INTO StudentsCopy
SELECT 2,'deepak','Murugesan','Umavathi','10/10/2000','chennai',getDate(),6857541239

--To add primary key for existing table 
--ALTER TABLE Persons ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

---To drop primary key 
--Alter Table Persons drop constraint pk_person



--Rainbow School
--School Management Database

--creating database
create database SchoolDatabase

--using database
use SchoolDatabase

--Creating Student Table
create table Student
(
StudentId int primary key,
FirstName nvarchar(50),
LastName nvarchar(50),
ClassId int 
)

--Creating Subjects Table
create table Subjects
(
SubjectId int primary key,
SubjectName nvarchar(50)
)

--Creating Classes Table
create table Classes
(
ClassId int primary key,
ClassName nvarchar(50)
)

--Creating an Index
create index Student_ClassId on Student(ClassId)

--Inserting Records on to the Classes table
insert into Classes values(1,'Class10')
insert into Classes values(2,'Class11')
insert into Classes values(3,'Class9')
insert into Classes values(4,'Class7')
insert into Classes values(5,'Class8')

--Inserting Records on to the Subjects Table
insert into Subjects values(1,'Math')
insert into Subjects values(2,'Science')
insert into Subjects values(3,'English')
insert into Subjects values(4,'History')
insert into Subjects values(5,'Geography')


--Inserting Records on to the Student Table
insert into Student values(1,'Nirmal','Raj',1)
insert into Student values(2,'Arun','Kumar',2)
insert into Student values(3,'Arjun','Das',3)
insert into Student values(4,'Vijay','Kannan',4)
insert into Student values(5,'Sam','Wilson',5)
insert into Student values(6,'Aditya','Arunachalam',1)
insert into Student values(7,'Manisha','Yadav',3)
insert into Student values(8,'Hari','Krishnan',4)
insert into Student values(9,'Senthil','Balaji',2)
insert into Student values(10,'Shalini','Pandey',5)

--Displaying The student details
select s.StudentId,
s.FirstName,
s.LastName,
c.ClassName,
sub.SubjectName
from
Student s
join
Classes c on s.ClassId=c.ClassId
cross join
Subjects sub
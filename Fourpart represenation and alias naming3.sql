

------ Todays session

--------- Four part representaion of select statement


--------- Different approaches to querying the data from a table 




-- Basic way 

use mysql_db
go

select * from empduplicatedata22


-- four part refresentation of select

select * from servername.databasename.dbo.tablename


select @@SERVERNAME

select * from [LAPTOP-24VJR164].mysql_db.dbo.empduplicatedata22 -- 4 part refresentation

select * from mysql_db.dbo.empduplicatedata22 -- 3 part refresentation

select * from dbo.empduplicatedata22 -- 2 part refresentation

select * from empduplicatedata22 -- 1 part refresentation

--------------

select * from ...empduplicatedata22 -- 4 part refresentation

select * from ..empduplicatedata22 -- 3 part refresentation

select * from .empduplicatedata22 -- 2 part refresentation

select * from empduplicatedata22 -- 1 part refresentation




-- How to select few columns from a table

select sno, 
       sname, 
	   empid, 
	   salary 
from empduplicatedata22
 

-- How to select few columns from a table with alias name(column specific)


select sno   as id, 
       sname as [emp name] , 
	   empid , 
	   salary as payment 
from dbo.empduplicatedata22



-- How to select few columns from a table with alias name (table specific)

select sno   as id, 
       sname as [emp name] , 
	   empid , 
	   salary as payment 
from dbo.empduplicatedata22 as emp



-- How to select few columns from a table with alias name (table specific | column specific)


select emp.sno   as id, 
       emp.sname as [emp name] , 
	   emp.empid , 
	   emp.salary as payment 
from dbo.empduplicatedata22 as emp



-- How to give alias names with spaces 

select emp.sno   as [id number], 
       emp.sname as [emp name] , 
	   emp.empid as [emp number], 
	   emp.salary as payment 
from dbo.empduplicatedata22 as emp



-- Inserting a table data into another table 

select * from dbo.empduplicatedata22

select * into dbo.empdumydatatable from dbo.empduplicatedata22  

select * from dbo.empdumydatatable 

-- Inserting some columns into another table 

select sno, 
       sname, 
	   salary 
into dbo.empdumy22 
from dbo.empduplicatedata22  

select * from dbo.empdumy22






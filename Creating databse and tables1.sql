
---------------- SQL QUERYING


--- What is data 
--- What is database 
--- What is DBMS
--- Different kinds of DBMS systems
--- Database operations 
--- Datatypes in sql
--- Commands / sub languages in sql 
--- What is table and operations on it



--- How to create a database

create database mysql_db
go


--- mdf & ldf files location regarding particular database 
----- mdf (master data file )
----- ldf (log data file )


use mysql_db
go

SELECT
  name 'Logical Name', 
  physical_name 'File Location'
FROM sys.database_files


--- How to change database name 

-- method 1
alter database mysql_db modify name = sqlserver_db
go

alter database sqlserver_db modify name = mysql_db
go



-- method 2 (optional)
exec sp_renamedb 'sqlserver_db', 'mssql_db' 
  

--- By default it shows "master" database
--- How to shift "master" database to "our own database"

use mysql_db
go

--- How to drop a database 

--drop database mysql_db



use mysql_db
go












-- Most common datatypes in sql server 

--INT, bigint
--CHAR, VARCHAR, NVARCHAR
--DATETIME, date
--DECIMAL, FLOAT
--BIT




-------------------------------------

--- Different types of commands in sql server 

-------------------------------------
--DDL(Data Definition Language).

--create
--alter
--drop
--rename
--truncate

--DML(Data Manipulation Language).

--insert
--update
--delete
--lock
--merge


--DQL / DRL (Data Query Language).

--select


--DCL(Data Control Language).

--grant
--revoke


--TCL(Transaction Control Language).

--rollback
--commit
--savepoint


--- Creating a table 

create table employedata
(
sno int,
sname varchar(25),
empid int,
job varchar(10),
company varchar(15),
salary money
)
go


select * from employedata

select sno, sname, empid, job, company from employedata


--- Inserting some records 

insert into employedata values (1, 'john', 101, 'sql', 'a', 1000)
insert into employedata values (2, 'jake', 102, 'sql', 'a', 2000)
insert into employedata values (3, 'julia', 103, 'java', 'b', 4000)
insert into employedata values (4, 'kate', 104, 'dataentry', 'b', 3000)
insert into employedata values (5, 'paul', 105, 'java', 'c', 6000)
insert into employedata values (6, 'peter', 106, 'python', 'c', 7000)
go


-- Insertions in another way

insert into employedata select 7, 'joker', 107, 'java', 'd', 8000 union all
select 8, 'nikol', 108, 'python', 'c', 6500 union all
select 9, 'mike', 109, 'java', 'a', 7500
go


select * from employedata

insert into employedata(sno, sname, empid, job,company,salary) values (6, 'peter', 106, 'python', 'c', 7000)



-----------------------------------------


-- Operations on table
------ changing name of the table 
------ adding columns to the table 
------ changing data types 
------ drop a column from a table 
------ dropping and truncating a table 


select * from employedata

select * into empduplicatedata from employedata


select sno, empid, sname, salary into empduplicatedata22 from employedata

select * from empduplicatedata22


select * from empduplicatedata



--- used for table information

execute sp_help 'empduplicatedata'



------ changing name of the table 


 exec sp_rename 'empduplicatedata', 'empdummydata'


 select * from empdummydata



------ changing a column name 

exec sp_rename 'empdummydata.salary', 'payment'

select * from empdummydata



------ adding a single column to the table 

alter table empdummydata
add emaildomain varchar(10) not null default 0

------ adding a multiple columns to the table

alter table empdummydata
add active_status varchar(2) not null default 1,
    lastname varchar(10) not null default 'dev'


select * from empdummydata


------ changing data types for single column  

alter table empdummydata
alter column empid decimal (10,2)

sp_help 'empdummydata'


------ changing data types for multiple columns
----------for multiple columns we need to write individual statements

sp_help 'empdummydata'


alter table empdummydata
alter column sname varchar(50)

alter table empdummydata
alter column payment decimal(10,2)

------ drop a column from a table

select * from empdummydata


alter table empdummydata
drop column emaildomain

------ drop a multiple columns from a table

alter table empdummydata
drop column sname, empid


------ truncating a table 

select * from empdummydata


truncate table empdummydata


------ drop multiple tables at once 

CREATE TABLE #testing1(ID INT, NAME VARCHAR(100));
insert into #testing1 values(1, 'a')

CREATE TABLE #testing2(ID INT, NAME VARCHAR(100));
CREATE TABLE #testing3(ID INT, NAME VARCHAR(100));

select * from #testing1

drop table #testing1

drop table  #testing2, #testing3 





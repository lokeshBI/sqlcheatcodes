



----------------------- Todays Session



----------------------- Types of tables in sql











use mysql_db
go




--- Types of tables in sql
--- Every query results a table in sql 





-- Basic table

use mysql_db
go

create table sampleTB
(
sno int,
sname varchar(10),
email varchar(50)
)





-- Derived table

select sampletable.sname, sampletable.job 
from 
(
select * from employedata
) as sampletable




-- Table variable  


declare  @tablevar table 
(
sno int,
sname varchar(20),
empid int,
job varchar(10),
company varchar(15),
salary money
)
insert into @tablevar select * from employedata
select * from @tablevar 



-- Temp tables (local / global)

create table #mylocaltemp (
sno int,
sname varchar(20),
empid int,
job varchar(10),
company varchar(15),
salary money
)


select * from #mylocaltemp  -- can access only within the session.

create table ##mylocaltemp (
sno int,
sname varchar(20),
empid int,
job varchar(10),
company varchar(15),
salary money
)

select * from ##mylocaltemp -- can access within the session and new session as well.

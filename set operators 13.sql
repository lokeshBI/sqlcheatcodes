



------------------------- Todays Session


------------------------- Set operators in sql 

---------------------------- union
---------------------------- union all
---------------------------- intersect













----- set operators in sql 

-- union
-- union all
-- intersect

-------- points to remember while using set operators

---- 1. you should have same schema for tables (same no.of columns in tables)
---- 2. you sholud have same datatypes for the tables (same order datatypes)
---- 3. set operators used to combines the data among the tables 


use mysql_db
go



select * from employedata
order by salary 




select * from employedata 

select * from employedata where salary >=7500



-- union
---- union will prevent the duplication of rows 

select * from employedata 
union
select * from employedata where salary >=7500


--- what if we don't use same order 

select sno,sname, salary from employedata 
union
select sname, sno, salary from employedata where salary >=7500



select * from employedata where salary <=7500 

select * from employedata where salary >=7500


select * from employedata where salary <=7500 
union
select * from employedata where salary >=7500


-- union all

select * from employedata 

select * from employedata where salary >=7500

select * from employedata 
union 
select * from employedata where salary >=7500



select * from employedata 
union all
select * from employedata where salary >=7500

-- intersect

select * from employedata 

select * from employedata where salary >=7500


select * from employedata 
intersect
select * from employedata where salary >=7500




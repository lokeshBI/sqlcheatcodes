



--------------- Todays session

-- How to filter your query results 

-- where clause

-- operators in sql (=, <, >, <=, >=, between, not between, in , not in, null, not null)
-- wildcard search (like operator)



use mysql_db
go













-- How to filter your query results 

-- where clause 

select * from employedata






-- get the data from table  where salary is 1000



select * from employedata
where salary = 1000





-- get the data from table  where salary is greater than 1000 from company name 'b'

select * from employedata

select * from employedata
where salary > 1000 and company = 'b'






-- get the data from table  where salary is greater than 2000 or employees whose job is 'sql' 


select * from employedata
where salary >= 2000 or job = 'sql'





-- get the data from table  where salary between 1000 and 5000


select * from employedata
where salary between 1000 and 5000






-- get the data from table  where salary not between 1000 and 5000



select * from employedata
where salary not between 1000 and 5000



-- get the data from table where company name other than 'a'


select * from employedata
where company <> 'a'





-- get the data from table where company name other than 'c'


select * from employedata
where company in ('a', 'b', 'd')





-- get the data from table where company name is 'c'


select * from employedata
where company not in ('a','b', 'd')






-- get the data from table where company name is not listed


select * from employedata
where company is null





-- get the data from table where company names listed 


select * from employedata
where company is not null






-- How to filter your query results using pattern search

--learn about the LIKE match condition | wildcard search

select * from employedata
where sname like 'j%'



select * from employedata
where job like '%l'



select * from employedata
where sname not like 'j%'


select * from employedata
where sname like '%[j,e,a]'


select * from employedata 
where sname like '[p,j,t]%'



select * from employedata
where sname like 'j%'



select * from employedata
where sname like 'j___'



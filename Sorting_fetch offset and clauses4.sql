

---------------------- Todays session





--- clauses in sql 
------ (Clauses in SQL server : from , where , top n, group by ,order by, output, select ,
------                          having , cube , rollup , into , over , option , with,join , on, output)


----How to sort your query results 
---- order by
---- Top N 
---- offset fetch



use mysql_db
go


select * from employedata


select sname, company, job, salary from employedata
order by salary 


select * from employedata


select * from employedata
order by salary desc 

----sort on two or more columns


select * from employedata


select * from employedata
order by company asc , salary desc


select * from employedata
order by company desc , salary asc


----sort on a calculated field

select * from employedata


select *, salary/2 as halfsalary from employedata
order by halfsalary desc


----limit our query to a specified number of results

select * from employedata

-- top N

select top 5 * from employedata
order by salary desc



---- You can use OFFSET and FETCH.

select * from employedata



select * from employedata
order by salary desc

select * from employedata
order by salary desc
         offset 5 rows 


select * from employedata
order by salary



select * from employedata
order by salary 
         offset 5 rows

select * from employedata
order by salary 
         offset 5 rows 
		 fetch next 2 rows only

































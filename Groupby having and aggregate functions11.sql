




---------------- Todays session

------------------ Functions
-------------------- System defined functions
-------------------- Aggregate functions


-------------------- Clauses (group by , having)

-------------------- Difference between where clause & having (checkout the sql questions doc)












--Learn how to group results using GROUP BY
--Use aggregate functions to perform calculations
--Understand how to filter groups using the HAVING clause


use mysql_db
go



select * from employedata


--- Aggregate functions

select COUNT(*) as [no of rows] from employedata

select sum(salary) as [total salary] from employedata

select min(salary) as [min salary] from employedata

select max(salary) as [max salary] from employedata

select avg(salary) as [avg salary] from employedata

--- group by

select job from employedata
group by job


select distinct job from employedata



select job, sum(salary) as payments from employedata
group by job



select job, count(salary) as sal_counts from employedata
group by job


select job, count(job) as job_counts from employedata
group by job



select job, count(distinct job) as job_counts from employedata
group by job




select count(distinct sno) as [total no of rows]  from employedata

select count(*) as [total no of rows] from employedata



select job, min(salary) as payments from employedata
group by job



select job, max(salary) as payments from employedata
group by job


select job, avg(salary) as payments from employedata
group by job




select company, SUM(salary) as payments from employedata
group by company
order by payments desc




select company, SUM(salary) as payments from employedata
group by company
having sum(salary) > 7000
order by payments desc 



select  top 1 company, SUM(salary) as payments from employedata
group by company
having sum(salary) > 7000
order by payments desc 




select company, avg(salary) as payments from employedata
group by company
order by payments desc




select company, SUM(salary) as payments from employedata
group by company
having avg(salary) > 7000
order by payments  


select company, avg(salary) as payments from employedata
group by company
having avg(salary) > 7000
order by payments  

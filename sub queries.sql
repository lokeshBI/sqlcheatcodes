
use mysql_db
go


select * from employeetable order by salary desc


-- higest paid employee
select * 
from employeetable 
where salary = (select max(salary) from employeetable)

-- second higest paid employee
select * from employeetable
where salary = (
select max(salary) from employeetable
where salary < (select max(salary) from employeetable ))

-- multiple values in subquery can handle with IN operator

select * from employeetable
where salary in (
select max(salary) 
from employeetable
group by gender
)

-- another example

select min(salary) 
from employeetable
where salary in (
select distinct top 5 salary from employeetable order by salary desc
)

-- correlated sub queries

select * from employedata
select * from employeetable



select * from employeetable as et
where exists (select * from employedata as ed where et.id = ed.sno)


select * from employeetable as et
where not exists (select * from employedata as ed where et.id = ed.sno)





------------------------ Todays Session

---------------------------- Joins

---------- set operators (union, union all...etc)---- combining data at row level
---------- joins (inner, left, right, cross..etc)---- combining the data at column level














--- sql joins 

------ inner join
------ left outer join 
------ right outer join
------ full outer join 
------ cross join
------ left outer join with exclusion
------ right outer join with exclusion
------ full outer join with exclusion 



use mysql_db
go



create table #temp1
(
empid int,
ename varchar(10),
salary money
)

insert into #temp1 values (101, 'john',1000)
insert into #temp1 values (102, 'kate',2000)
insert into #temp1 values (103, 'peter',3000)
insert into #temp1 values (104, 'nick',4000)
insert into #temp1 values (105, 'colman',5000)

create table #temp2
(
empid int,
email varchar(20),
company varchar(5)
)

insert into #temp2 values (101, 'jn@email.com', 'a')
insert into #temp2 values (102, 'kt@email.com', 'b')
insert into #temp2 values (103, 'pt@email.com', 'c')
insert into #temp2 values (106, 'jk@email.com', 'd')
insert into #temp2 values (107, 'pk@email.com', 'e')

------

select * from #temp1
select * from #temp2

---- syntax 



SELECT *
FROM [TABLE A] AS A
[TYPE OF JOIN (INNER / LEFT / RIGHT / CROSS...ETC)] [TABLE B] AS B
ON A.COLUMNNAME = B.COLUMNNAME 


select * from #temp1
select * from #temp2

-- inner join

select *
from #temp1 as t1
inner join #temp2 as t2
on t1.empid = t2.empid

select t1.empid,t1.ename,t1.salary,t2.email
from #temp1 as t1
inner join #temp2 as t2
on t1.empid = t2.empid


-- left outer join

select *
from #temp1 as t1
left outer join #temp2 as t2
on t1.empid = t2.empid


-- right outer join

select *
from #temp1 as t1
right outer join #temp2 as t2
on t1.empid = t2.empid


-- full outer join 

select *
from #temp1 as t1
full outer join #temp2 as t2
on t1.empid = t2.empid

-- cross join

select *
from #temp1 as t1
cross join #temp2 as t2

-- left outer join with exclusion

select *
from #temp1 as t1
left outer join #temp2 as t2
on t1.empid = t2.empid
where t2.empid is null




-- right outer join with exclusion

select *
from #temp1 as t1
right outer join #temp2 as t2
on t1.empid = t2.empid
where t1.empid is null


-- full outer join with exclusion

select *
from #temp1 as t1
full outer join #temp2 as t2
on t1.empid = t2.empid
where t1.empid is null or t2.empid is null


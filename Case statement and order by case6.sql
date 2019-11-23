

-------------------- Todays session

--case statement in sql

------ different ways of writing in query

------ case statement with order by clause 



use mysql_db
go


select * from employedata

----------  case statement in select query

-- approach 1
select *,
case job
when 'sql' then 'sql company'
when 'java' then 'java company'
when 'python' then 'python company'
else 'No title '
end
as [profile]  
from employedata


-- approach 2
select sname, job,
case 
when job ='sql' then 'sql company'
when job ='java' then 'java company'
when job ='python' then 'python company'
else 'No title '
end as [profile]  
from employedata






--- case statement with order by caluse 


---------- 1. Sort NULLs Last – CASE Statement In ORDER BY

--By default ORDER BY Sorts NULL First

select * from fruit 

SELECT   Name 
FROM     Fruit 
ORDER BY Name 


SELECT   Name 
FROM     Fruit 
ORDER BY Name desc

--We can Force ORDER BY to Sort NULLs Last
SELECT   Name 
FROM     Fruit 
ORDER BY CASE 
         WHEN Name IS NULL THEN 1 
		 ELSE 0 END, Name




--- 2. Sort Particular String First – CASE Statement In ORDER BY

--Default Order of values

SELECT * 
FROM   Employee
	  
--Tweaking the order by clause with case statement
--to get result set as per our requirement.


select * from  employee

SELECT Name, Designation
FROM   Employee
ORDER BY CASE
          WHEN Designation = 'CEO'          THEN 0 
	      WHEN Designation = 'CFO'          THEN 1
	      WHEN Designation = 'VP'           THEN 2
	      WHEN Designation = 'Manager'      THEN 3
	      WHEN Designation = 'Onshore Head' THEN 4
	      WHEN Designation = 'Trainee'	THEN 5
	      ELSE 6
         END, Name





-- 3.Sort Gender – CASE Statement In ORDER BY



--Default Female players sorted first
SELECT   * 
FROM     Player
ORDER BY Gender

--Tweak Order By to Sort and Display Male Player First

SELECT   * 
FROM     Player
ORDER BY CASE 
         WHEN Gender='M' THEN 0 
		 ELSE 1 END, Gender

























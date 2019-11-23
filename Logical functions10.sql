





------------- Todays session

----------------- Functions
------------------- system defined functions

----------------------- Logical functions






--- Logical functions 

-- choose()
-- iif()



--- choose(index, value1, value2, value3,.......)


select CHOOSE(1, 'apple','grape','banana','kiwi') as fruitname

select CHOOSE(2, 'apple','grape','banana','kiwi') as fruitname

select CHOOSE(3, 'apple','grape','banana','kiwi') as fruitname

select CHOOSE(4, 'apple','grape','banana','kiwi') as fruitname


--- iif(condition, value1, value2)

select * from employedata

select *, IIF(job = 'sql', salary * 2,salary) as [new salaries] from employedata
where job = 'sql'




















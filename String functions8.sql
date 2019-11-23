


--------- Todays session


--------------- Functions

--------------------system defined functions
------------------------ string functions















-- String functions 

select right('sql@bingo',5)

select left('sql@bingo',3)





select REPLICATE('sql ',5)

select REVERSE('sqlserver')




select LTRIM('       sqlserver')
select RTRIM('sqlserver       ')



select CHARINDEX('@', 'sql@bingo') -- index value starts from 1

select PATINDEX ('%@gmail%','essential@gmail') -- this pattern starts from the index position 10




select LEN('sqlserver')

select SUBSTRING('sqlserver',1,3)



select UPPER('sqlserver')
select LOWER('SQLSERVER')



select REPLACE('sql@server','@server','@india')

select STUFF('SQL Tutorial', 1, 3, 'HTML')

select stuff('lokesh@gmail.com',2,15,'****************') -- to encript



select coalesce(null,'lokesh',null)

select coalesce(null, null, 'kate')

select coalesce(null,'lokesh','johnwick')



select concat('hello',space(2) ,'there')



select isnull (null,100)

select isnull(100,500)

select isnull(100,null)



--The result of the DIFFERENCE() indicates the difference between two SOUNDEX() values on a scale of 0 to 4.
--A value of 0 means weak or no similarity between SOUNDEX() values;
--4 means strongly similar or identical SOUNDEX() values.

select SOUNDEX('Juice') as [first term], 
       SOUNDEX('Jucy') as [second term]

select SOUNDEX('Juice') as [first term], 
       SOUNDEX('mike') as [second term]


select DIFFERENCE('juice','jucy') as closeness

select SOUNDEX('Juice') as [first term], 
       SOUNDEX('Jucy') as [second term],
	   DIFFERENCE('juice','jucy') as closeness


















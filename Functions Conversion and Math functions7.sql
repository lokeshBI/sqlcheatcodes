

-------------- Todays session



-------- Functions

----------- system defined (built-in functions)
----------- user defined functions 















---------- Introduction to sql server built-in functions 

--conversion functions 
--logical functions 
--math fucntions 
--string functions
--date functions 














-- conversion functions

-- cast()
-- convert()





use mysql_db
go




select * from employedata



select sname + '' + empid as [emp code] from employedata


sp_help 'employedata'



select sname + ' ' + CAST( empid as varchar) as [code name]  from employedata


select sname + space(5) + convert( varchar(20),empid) as [code name]  from employedata


select getdate()


select convert(varchar(max),getdate(),100)------------------------Sep 13 2017 10:11PM
select convert(varchar(max),getdate(),101)------------------------09/13/2017


select convert(varchar(max),getdate(),102)------------------------2017.09.13
select convert(varchar(max),getdate(),103)------------------------13/09/2017

select convert(varchar(max),getdate(),104)------------------------13.09.2017
select convert(varchar(max),getdate(),105)------------------------13-09-2017
select convert(varchar(max),getdate(),106)------------------------13 Sep 2017
select convert(varchar(max),getdate(),107)------------------------Sep 13, 2017
select convert(varchar(max),getdate(),108)-------------------------22:15:27
select convert(varchar(max),getdate(),109)-------------------------Sep 13 2017 10:15:50:727PM
select convert(varchar(max),getdate(),110)--------------------------09-13-2017
select convert(varchar(max),getdate(),111)--------------------------2017/09/13
select convert(varchar(max),getdate(),112)--------------------------20170913
select convert(varchar(max),getdate(),113)-------------------------13 Sep 2017 22:18:21:720
select convert(varchar(max),getdate(),114)-------------------------22:18:42:227
select convert(varchar(max),getdate(),120)-------------------------2017-09-13 22:18:58
select convert(varchar(max),getdate(),121)------------------------2017-09-13 22:19:12.430
select convert(varchar(max),getdate(),126)-----------------------2017-09-13T22:19:26.353






















-- Math functions 
-- there are many math functions but here are few important ones 

select Abs(10.002)

select abs (-10.2)

select Acos(0.25145)
select Asin(0.25145)
select Atan(0.24518)


select Floor(10.1)
select Floor(10.8)

select Exp(10.15)

select Rand()   --- will give you the number ranging between 0 and 1

select Sign(10.1)
select Sign(-10.1)
select Sign(0)


select Sqrt(81)

select Square(3)

select power (2,3)


select SQRT(25)
select SQUARE(5)

select ROUND(2.3545,2)
select ROUND(3.567,1)

select CEILING(1.9)
select CEILING(1.99)

select FLOOR(1.9)
select FLOOR(1.99) 

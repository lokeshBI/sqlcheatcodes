



------------ Todays session


----------------- Functions
------------------- system defined functions
----------------------- datetime functions
















-- Datetime functions 

select getdate()

select GETUTCDATE()

select CURRENT_TIMESTAMP

select getdate()
select MONTH(getdate())
select DAY(getdate())
select YEAR(getdate())



select datepart(dw,getdate())
select datepart(DD,getdate())
select datepart(mm,getdate())
select datepart(yyyy,getdate())
select datepart(Q,getdate())


select getdate()
select datepart("hour",getdate())
select datepart("minute",getdate())
select datepart("second",getdate())


select datename(dw,getdate())
select datename(mm,getdate())
select datename(yy,getdate())
select DATENAME(q, getdate())


select getdate()
select getutcdate()
select sysdatetime()
select sysdatetimeoffset()
select sysutcdatetime()


SELECT DATENAME(year, GETDATE()) as Year,
       DATENAME(week, GETDATE()) as Week,
       DATENAME(dayofyear, GETDATE()) as DayOfYear,
       DATENAME(month, GETDATE()) as Month,
       DATENAME(day, GETDATE()) as Day,
       DATENAME(weekday, GETDATE()) as WEEKDAY

SELECT DATEPART(YEAR, GETDATE()) as Year,
       DATEPART(WEEK, GETDATE()) as Week,
       DATEPART(DAYOFYEAR, GETDATE()) as DayOfYear,
       DATEPART(MONTH, GETDATE()) as Month,
       DATEPART(DAY, GETDATE()) as Day,
       DATEPART(WEEKDAY, GETDATE()) as WEEKDAY

select   DATEADD (month , 3 , GETDATE() ) AS "Add 3 Months"
  ,DATEADD (month , -3 , GETDATE() ) AS "Subtract 3 Months"
  ,DATEADD (day , 7 , GETDATE() ) AS "Add 7 Days"
  ,DATEADD (week , 1 , GETDATE() ) AS "Add 1 Week"
  ,DATEADD (year , 1 , GETDATE() ) AS "Add 1 Year"
  --TIME      
  ,DATEADD (hour , 3 , GETDATE() ) AS "Add 2 Hours"
  ,DATEADD (minute , 30 , GETDATE() ) AS "Add 30 Minutes"


select  DATEDIFF(day, GETDATE(),    'Nov 23 1958') AS "DATEDIFF DAYS"
  ,DATEDIFF(month, GETDATE(),  'Nov 23 1958') AS "DATEDIFF MONTHS"
  ,DATEDIFF(year, GETDATE(),   'Nov 23 1958') AS "DATEDIFF YEARS"
-- Time
  ,DATEDIFF(hour, GETDATE(),   'Nov 23 1958') AS "DATEDIFF HOURS"
  ,DATEDIFF(minute, GETDATE(), 'Nov 23 1958') AS "DATEDIFF MINUTES"
  ,DATEDIFF(second, GETDATE(), 'Nov 23 1958') AS "DATEDIFF SECONDS"
  


select EOMONTH(getdate())
select ISDATE(getdate())












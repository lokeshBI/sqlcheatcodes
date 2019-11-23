



------ Today's session

-- what is schema and operations on it

--A schema in a SQL database is a collection of logical structures of data.
--The schema is owned by a database user and has the same name as the database user.

------ how to create schema
------ how to transfer schema 
------ how to drop schema



-- what is identity property in sql and operations on it
---- Identity (seed , increment)











select SCHEMA_NAME()




------ how to create schema

use mysql_db
go
create schema hr authorization dbo


create table hotels
(
sno int,
hotel_name varchar(10)
)

insert into hotels values (1,'abc')


select * from dbo.hotels 

select * from hr.hotels 



-- how to transfer scahema to an object

alter schema hr transfer dbo.hotels 


select * from dbo.hotels 

select * from hr.hotels 



-- how to drop schema

drop schema hr



--- First drop an object which is associated with hr schema and then drop schema

drop table hr.hotels 


drop schema hr

--- check 

select * from dbo.hotels 

select * from hr.hotels 
 

 -- hotels
 -- hotels

 -- hr.hotels
 -- IT.hotels








-- what is identity property in sql and operations on it

--- identity(seed, increment)


------- Identity Property

CREATE TABLE person (
    person_id INT IDENTITY(1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL
)

select * from person

insert into person select 'john', 'miller','m' union all
                      select 'julia','russ', 'f'

insert into person values ('kate', 'will','f') 


select * from  person

delete from person where first_name = 'john'



insert into person (person_id, first_name, last_name,gender) values(1, 'john', 'miller','m') -- get error



set identity_insert person ON  -- By default this property is OFF


insert into person (person_id, first_name, last_name,gender) values(1, 'john', 'miller','m')


set identity_insert person off

select * from person


--SQL @@IDENTITY Function
--SQL SCOPE_IDENTITY() Function
--SQL IDENT_CURRENT Function
--SQL IDENTITY Function



insert into person values ('cat', 'peas','f') 

select * from person


select @@IDENTITY from person -- @@Identity returns the maximum IDENTITY value generated in this session.

select @@IDENTITY

-- We use SCOPE_IDENTITY() function to return the last IDENTITY value in a table under the current scope
select scope_identity()
 
--We use the IDENT_CURRENT function to return the last IDENTITY value generated for a specified table under any connection

select IDENT_CURRENT('person') as [current identity value]




























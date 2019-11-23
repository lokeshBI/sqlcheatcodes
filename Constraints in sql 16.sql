


-------------------------- Todays Session




-- Constraints / Integrities  in sql 

----- constraints = restrictions on table | coulmn level
----- objevtive = obtain/provide integrity to the data


------NOT NULL - Ensures that a column cannot have a NULL value
------UNIQUE - Ensures that all values in a column are different
------PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
------FOREIGN KEY - Uniquely identifies a row/record in another table
------CHECK - Ensures that all values in a column satisfies a specific condition
------DEFAULT - Sets a default value for a column when no value is specified













-------

-- Adding constraints while creating a table 

-- not null constraint

use mysql_db
go

create table  Student1
(
s_id int , --- I didn't specify any identity property
sname varchar(60), 
age int
)

select * from Student1

insert into Student1 (sname, age) values ('joker',25)





--------------

create table  Student
(
s_id int NOT NULL, 
sname varchar(60), 
age int
)

select * from Student


insert into Student (sname, age) values ('joker',25)



insert into Student (s_id, sname, age) values (1,'joker',25)


select * from Student

-- unique constraint

create table  teacher
(
s_id int NOT NULL unique, 
sname varchar(60) not null, 
age int not null
)

select * from teacher

insert into teacher (s_id, sname, age) values (1, 'joker',25)

insert into teacher (s_id, sname, age) values (1, 'tony',26)

alter table teacher
drop constraint [UQ__teacher__2F3684F50681BBA3] 


-- Check constraint

create table  school
(
s_id int NOT NULL, 
sname varchar(60) not null, 
age int check (age > 5)
)

select * from school

insert into school (s_id, sname, age) values (1, 'joker',5)

insert into school (s_id, sname, age) values (1, 'joker',6)


alter table school
drop constraint [CK__school__age__6477ECF3]

-- Default constraint

create table  hospital
(
s_id int NOT NULL, 
sname varchar(60) not null, 
age int not null,
[date] date not null default getdate() 
)

select * from hospital

sp_help 'hospital'  --- table information

insert into hospital (s_id, sname, age) values (1, 'joker',5)

select * from hospital

alter table hospital
drop constraint [DF__hospital__date__66603565]


-- primary key constraint

create table  mall  -- parent table 
(
s_id int primary key, -- combination of unique + not null 
sname varchar(60) not null, 
age int not null,
[date] date not null default getdate() 
)

select * from mall

insert into mall (s_id,  sname, age) values (1,'joker',5)

insert into mall (s_id,  sname, age) values (1,'tommy',10)

insert into mall (s_id,  sname, age) values (2,'tommy',10)

delete mall where s_id = 2 

-- foreign key constraint

create table  market  --- child table 
(
id int foreign key references mall(s_id), 
sname varchar(60) not null, 
age int not null,
[date] date not null default getdate() 
)

select * from market

insert into market (id,  sname, age) values (1,'tommy',10)

insert into market (id,  sname, age) values (1,'tony',20) -- accepts duplication 

--now try to delete the record 

delete market where id = 1 -- yes you can from market table 

--now try to delete the record from mall table 

select * from mall -- parent table 
select * from market -- child table

delete mall where s_id = 1 -- now you can't because it is referencing to market (child table) foreign key

--now try to update the record from mall table

update mall
set s_id = 10 where s_id = 1 --you can't update because it is referencing to market (child table) foreign key

---- How can I update or delete the record from mall table (parent table)
--------- in order to update & delete the records in parent table (mall table), we need to add 
--------- on update cascade
--------- on delete cascade

-- first drop the foreign key constraint 

alter table market
drop constraint [FK__market__id__6B24EA82]

-- now add on update cascade, on delete cascade

ALTER TABLE market---- child table 
  ADD CONSTRAINT fk_on_id 
  FOREIGN KEY (id) 
  REFERENCES mall(s_id) --- parent table (column name )
  ON DELETE CASCADE ON UPDATE CASCADE
  

-- new you can able to update and delete the parent table (mall table) records

select * from mall

-- try to update 

update mall 
set s_id = 10 where s_id = 1


-- try to delete

delete from mall where s_id = 10 


--- How to drop a constraint
------here I m going to drop default constraint from mall table 

alter table mall
drop constraint [DF__mall__date__693CA210]

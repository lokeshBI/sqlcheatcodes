



-------------------------- Todays Session


--------------------------- clauses

--------------------------- How to use rollup() & cube along with group by clause

------------------------------- rollup() 

------------------------------- cube() 


use mysql_db
go









---- rollup and cube with group by clause

 CREATE TABLE employeetable
  (
      id INT PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      gender VARCHAR(50) NOT NULL,
      salary INT NOT NULL,
      department VARCHAR(50) NOT NULL
   )

  INSERT INTO employeetable
  VALUES
  (1, 'David', 'Male', 5000, 'Sales'),
  (2, 'Jim', 'Female', 6000, 'HR'),
  (3, 'Kate', 'Female', 7500, 'IT'),
  (4, 'Will', 'Male', 6500, 'Marketing'),
  (5, 'Shane', 'Female', 5500, 'Finance'),
  (6, 'Shed', 'Male', 8000, 'Sales'),
  (7, 'Vik', 'Male', 7200, 'HR'),
  (8, 'Vince', 'Female', 6600, 'IT'),
  (9, 'Jane', 'Female', 5400, 'Marketing'),
  (10, 'Laura', 'Female', 6300, 'Finance'),
  (11, 'Mac', 'Male', 5700, 'Sales'),
  (12, 'Pat', 'Male', 7000, 'HR'),
  (13, 'Julie', 'Female', 7100, 'IT'),
  (14, 'Elice', 'Female', 6800,'Marketing'),
  (15, 'Wayne', 'Male', 5000, 'Finance')

select * from employeetable

------ rollup()


-- department wise total salaries 

select * from employeetable

select department, sum(salary) as totalsal
from employeetable
group by department
order by totalsal 


-- how to use coalesce()

select  department, 
sum(salary) as totalsal
from employeetable
group by rollup (department)
order by totalsal



select coalesce(department, 'All departments Total') as department, 
sum(salary) as totalsal
from employeetable
group by rollup (department)
order by totalsal asc




select coalesce(department, 'All departments Total') as department, 
coalesce (gender , 'Sub Total') as gender,
sum(salary) as totalsal
from employeetable
group by rollup (department, gender)



----- cube()


SELECT
  coalesce (department, 'All Departments') AS Department,
  coalesce (gender,'All Genders') AS Gender,
  sum(salary) as Salary_Sum
  FROM employeetable
  GROUP BY CUBE (department, gender)




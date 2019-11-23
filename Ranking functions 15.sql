



------------------------- Todays Session

------------------------- System defined functions

-----------------------------Ranking functions

---------------------------------- row_number()
---------------------------------- rank()
---------------------------------- dense_rank()
---------------------------------- ntile()
---------------------------------- over() clause
---------------------------------- partition by clause














-- ranking functions  

use mysql_db
go




-- CREATE TABLE StudentScore
--(
--  Student_ID INT PRIMARY KEY,
--  Student_Name NVARCHAR (50),
--  Student_Score INT
--) 

--GO

--INSERT INTO StudentScore VALUES (1,'rose', 978)
--INSERT INTO StudentScore VALUES (2,'kate', 770)
--INSERT INTO StudentScore VALUES (3,'paul', 1140)
--INSERT INTO StudentScore VALUES (4,'Jack', 770)
--INSERT INTO StudentScore VALUES (5,'John', 1240)
--INSERT INTO StudentScore VALUES (6,'Mike', 1140)
--INSERT INTO StudentScore VALUES (7,'Goerge', 885)

select * from StudentScore

-- row_number()

select * 
from StudentScore
order by Student_Score 



select *, ROW_NUMBER() OVER(order by Student_score ) AS ROWNUMBERS 
from StudentScore



select *, ROW_NUMBER() OVER(order by Student_score desc ) AS ROWNUMBERS 
from StudentScore


select *, ROW_NUMBER() OVER(order by Student_ID  ) AS ROWNUMBERS 
from StudentScore

select *, ROW_NUMBER() OVER(order by Student_ID desc  ) AS ROWNUMBERS 
from StudentScore

------ adding partition by clause

select *, ROW_NUMBER() OVER(partition by Student_Score order by Student_ID ) AS ROWNUMBERS 
from StudentScore


select *, ROW_NUMBER() OVER(partition by Student_Score order by Student_ID desc ) AS ROWNUMBERS 
from StudentScore


select *, ROW_NUMBER() OVER(partition by Student_Score order by Student_Score ) AS ROWNUMBERS 
from StudentScore

---- rank()

select * , RANK() over(order by Student_ID) as rnk
from StudentScore 

select * , RANK() over(order by Student_Score) as rnk
from StudentScore 

select * , RANK() over(partition by Student_Score order by Student_Score) as rnk
from StudentScore 


---- dense_rank()

select * , dense_rank() over(order by Student_ID) as rnk
from StudentScore 

select * , RANK() over(order by Student_Score) as rnk
from StudentScore 

select * , dense_rank() over(order by Student_Score) as densernk
from StudentScore 

select * , dense_rank() over( partition by Student_Score order by Student_Score) as rnk
from StudentScore 


----- ntile()

select 7/2

select *, NTILE(2) over (order by Student_ID) as groups
from StudentScore


select 7/3

select *, NTILE(3) over (order by Student_ID)
from StudentScore



select *, NTILE(2) over (order by Student_Score)
from StudentScore

select *, NTILE(2) over ( partition by Student_Score order by Student_ID)
from StudentScore


---- sql 2012

select *,  
sum(Student_Score) over( order by Student_ID rows between unbounded preceding and current row) as cummlative 
from StudentScore


select *,  
sum(Student_Score) over( partition by Student_Score order by Student_ID rows between unbounded preceding and current row) as cummlative 
from StudentScore

select *,  
sum(Student_Score) over( order by Student_ID rows between unbounded preceding and unbounded following) as cummlative 
from StudentScore


-- all ranking functions

select *,
ROW_NUMBER() over(order by student_score) as rownumber,
rank()       over(order by Student_score) as ranks,
dense_rank() over (order by student_score) as [dense rank],
ntile(2)     over(order by student_score) as groupings 
from StudentScore

select *,
ROW_NUMBER() over(partition by  student_score order by student_id) as rownumber,
rank()       over(partition by  student_score order by student_id) as ranks,
dense_rank() over (partition by  student_score order by student_id) as [dense rank],
ntile(2)     over(partition by  student_score order by student_id) as groupings 
from StudentScore

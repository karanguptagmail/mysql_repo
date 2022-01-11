with cte as
(
select *,
row_number()over(partition by (edate + interval 2 second), ename) as rn
from eve_date
)
select edate, ename from cte where rn =1;

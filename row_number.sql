# added in remote
# line in local
this line is in local
select * from table name
with cte as
(
select *,
row_number()over(partition by (edate + interval 2 second), ename) as rn
from eve_date
)
select edate, ename from cte where rn =1;

"explains the usage of row number analytical function"

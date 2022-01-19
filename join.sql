select * from eve_date e1
left join
eve_date e2
on
e1.ename = e2.ename
and
( e1.edate = e2.edate - INTERVAL 1 second AND e2.edate < e1.edate)
where e2.edate is null
order by e1.edate;

# row in main

# row in branch_1

# row in hpfc1

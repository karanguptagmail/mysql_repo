SELECT
    MT1.ename,
    MT1.edate
FROM
    eve_date MT1
LEFT OUTER JOIN eve_date MT2 ON
    MT2.ename = MT1.ename AND
    (
        MT2.edate < MT1.edate OR
        (MT2.edate = MT1.edate)
    ) AND
    MT2.edate >= MT1.edate - INTERVAL 1 SECOND;

select * from eve_date order by edate;

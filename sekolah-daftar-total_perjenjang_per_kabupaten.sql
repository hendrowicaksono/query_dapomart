SELECT kabupaten, 
SUM (CASE WHEN jenjang='SD' THEN 1 ELSE 0 END) AS SD,
SUM (CASE WHEN jenjang='SMP' THEN 1 ELSE 0 END) AS SMP,
SUM (CASE WHEN jenjang='SMA' THEN 1 ELSE 0 END) AS SMA,
SUM (CASE WHEN jenjang='SMK' THEN 1 ELSE 0 END) AS SMK,
SUM (CASE WHEN jenjang='SLB' THEN 1 ELSE 0 END) AS SLB,
COUNT (*) AS total
FROM datamart.sekolah
GROUP BY kabupaten
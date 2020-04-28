SELECT akreditasi AS "Akreditasi", COUNT(*) AS "Jumlah" 
FROM datamart.sekolah
GROUP BY akreditasi
ORDER BY akreditasi
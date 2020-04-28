SELECT jenjang, COUNT(1) AS jumlah_sekolah 
FROM datamart.sekolah
GROUP BY jenjang
ORDER BY jenjang ASC

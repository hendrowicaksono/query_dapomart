SELECT jenjang, COUNT(1) AS jumlah_sekolah 
FROM datamart.sekolah
WHERE {{kabupaten}}
GROUP BY jenjang
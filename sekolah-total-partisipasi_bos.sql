SELECT partisipasi_bos AS "Partisipasi", COUNT (*) AS "Jumlah"
FROM datamart.sekolah
GROUP BY partisipasi_bos
ORDER BY partisipasi_bos
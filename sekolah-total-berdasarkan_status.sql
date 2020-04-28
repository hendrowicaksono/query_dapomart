SELECT status_sekolah, COUNT(1) AS jumlah_sekolah
FROM datamart.sekolah
GROUP BY status_sekolah
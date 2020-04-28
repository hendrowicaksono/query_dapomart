SELECT akses_internet, COUNT(*) AS 'Jumlah'
FROM datamart.sekolah
GROUP BY akses_internet
ORDER BY Jumlah DESC

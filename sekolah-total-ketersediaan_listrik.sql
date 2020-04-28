SELECT sumber_listrik, COUNT(*) AS 'jumlah'
FROM datamart.sekolah
GROUP BY sumber_listrik
ORDER BY sumber_listrik ASC

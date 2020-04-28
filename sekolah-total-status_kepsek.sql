SELECT a.status_kepegawaian AS 'Status Kepegawaian', SUM (CASE WHEN a.Jumlah > 0 THEN 1 ELSE 0 END) AS 'Hasil'
FROM (
    SELECT se.sekolah_id, ptk.status_kepegawaian, COUNT(*) AS 'Jumlah'
    FROM datamart.sekolah AS se 
    LEFT JOIN datamart.ptk AS ptk ON se.sekolah_id=ptk.sekolah_id
    WHERE ptk.ptk_id IS NOT NULL
    AND ptk.jenis_ptk='Kepala Sekolah' AND ptk.status_keaktifan='Aktif'
    GROUP BY se.sekolah_id, ptk.status_kepegawaian
) AS a
GROUP BY a.status_kepegawaian
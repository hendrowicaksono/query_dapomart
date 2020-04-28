SELECT 'Kurang dari 6' as Murid, SUM(CASE WHEN a.sekolah_id IS NOT NULL THEN 1 ELSE 0 END) AS "Sekolah"
FROM (
    SELECT DISTINCT se.sekolah_id
    FROM datamart.sekolah AS se 
    LEFT JOIN datamart.rombongan_belajar AS rb ON se.sekolah_id=rb.sekolah_id
    WHERE rb.jumlah_anggota_rombel < 6
    GROUP BY se.sekolah_id
) AS a
UNION ALL
SELECT 'Lebih dari 5' as Murid, SUM(CASE WHEN a.sekolah_id IS NOT NULL THEN 1 ELSE 0 END) AS "Sekolah"
FROM (
    SELECT DISTINCT se.sekolah_id
    FROM datamart.sekolah AS se 
    LEFT JOIN datamart.rombongan_belajar AS rb ON se.sekolah_id=rb.sekolah_id
    WHERE rb.jumlah_anggota_rombel > 5
    GROUP BY se.sekolah_id
) AS a
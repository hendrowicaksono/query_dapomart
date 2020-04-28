SELECT 'Terisi' as Terisi,  COUNT(*) AS "Terisi" 
FROM datamart.sekolah AS "sekolah"
WHERE sk_izin_operasional != '-' AND sk_izin_operasional != '' AND sk_izin_operasional IS NOT NULL AND sk_izin_operasional != '-/-.' AND sk_izin_operasional != '0' AND sk_izin_operasional != '00000' AND sk_izin_operasional != '-,' 
AND sk_izin_operasional NOT LIKE '%00000' AND sk_izin_operasional != lower('TIDAK ADA') AND sk_izin_operasional != lower('SK Walikota') AND sk_izin_operasional != lower('Perubahan status') 
AND sk_izin_operasional != lower('Perlu Update') AND sk_izin_operasional != lower('PADA DINAS PENDIDIKAN') AND sk_izin_operasional != lower('No/...') AND sk_izin_operasional != lower('Keputusan Walikota Nomor ') 
AND sk_izin_operasional NOT LIKE '%====%' AND sk_izin_operasional NOT LIKE '%====%' AND sk_izin_operasional != '00/000/0000' AND sk_izin_operasional != '000/000/000' AND sk_izin_operasional != '000/0000/0000' 
GROUP BY provinsi
UNION ALL
SELECT 'Belum Lengkap' as "Belum Lengkap",  COUNT(*) AS "Belum lengkap" 
FROM datamart.sekolah AS "sekolah"
WHERE sk_izin_operasional = '-' OR sk_izin_operasional = '' OR sk_izin_operasional IS NULL OR sk_izin_operasional = '-/-.' OR sk_izin_operasional = '0' OR sk_izin_operasional = '00000' OR sk_izin_operasional = '-,' 
OR sk_izin_operasional LIKE '%00000' OR sk_izin_operasional = lower('TIDAK ADA') OR sk_izin_operasional = lower('SK Walikota') OR sk_izin_operasional = lower('Perubahan status') 
OR sk_izin_operasional = lower('Perlu Update') OR sk_izin_operasional = lower('PADA DINAS PENDIDIKAN') OR sk_izin_operasional = lower('No/...') OR sk_izin_operasional = lower('Keputusan Walikota Nomor ') 
OR sk_izin_operasional LIKE '%====%' OR sk_izin_operasional LIKE '%====%' OR sk_izin_operasional = '00/000/0000' OR sk_izin_operasional = '000/000/000' OR sk_izin_operasional = '000/0000/0000' 
GROUP BY provinsi
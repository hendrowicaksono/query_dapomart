SELECT npsn, nama, kabupaten, kecamatan, jenjang
FROM datamart.sekolah
WHERE {{kabupaten}}
[[AND kecamatan={{kecamatan}}]]
AND {{jenjang}}

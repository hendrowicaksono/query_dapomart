SELECT "datamart"."sekolah"."kecamatan" AS "kecamatan", "datamart"."sekolah"."jenjang" AS "jenjang", count(*) AS "jumlah"
FROM "datamart"."sekolah"
WHERE {{kabupaten}}
GROUP BY "datamart"."sekolah"."kecamatan", "datamart"."sekolah"."jenjang"
ORDER BY "datamart"."sekolah"."kecamatan" ASC, "datamart"."sekolah"."jenjang" ASC
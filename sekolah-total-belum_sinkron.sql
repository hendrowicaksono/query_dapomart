SELECT "sekolah"."jenjang", COUNT(*) AS "jumlah"
FROM "datamart"."sekolah" AS "sekolah"
LEFT JOIN "datamart"."rombongan_belajar" AS "rombel" ON "sekolah"."sekolah_id"="rombel"."sekolah_id"
WHERE "rombel"."rombongan_belajar_id" IS NULL
GROUP BY "sekolah"."jenjang"
ORDER BY "sekolah"."jenjang"
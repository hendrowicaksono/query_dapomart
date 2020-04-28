SELECT "sekolah"."jenjang", COUNT(1) AS "jumlah" 
FROM "datamart"."ptk"
LEFT JOIN "datamart"."sekolah" AS "sekolah" ON "datamart"."ptk"."sekolah_id"="sekolah"."sekolah_id"
GROUP BY "sekolah"."jenjang"
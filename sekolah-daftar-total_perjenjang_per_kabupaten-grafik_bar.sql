SELECT "datamart"."sekolah"."kabupaten" AS "kabupaten", "datamart"."sekolah"."jenjang" AS "jenjang", count(*) AS "jumlah"
FROM "datamart"."sekolah"
GROUP BY "datamart"."sekolah"."kabupaten", "datamart"."sekolah"."jenjang"
ORDER BY "datamart"."sekolah"."kabupaten" ASC, "datamart"."sekolah"."jenjang" ASC
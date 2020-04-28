SELECT 
    '1-10 komputer' as Komputer, SUM(CASE WHEN a.JumlahKomputer < 11 THEN 1 ELSE 0 END) AS "Sekolah"
FROM 
  (
    SELECT "sekolah"."provinsi", "sekolah"."sekolah_id", SUM("alat"."Jumlah") AS "JumlahKomputer"
    FROM "datamart"."sekolah" AS "sekolah"
    LEFT JOIN "datamart"."alat" AS "alat" ON "sekolah"."sekolah_id"="alat"."sekolah_id"
    WHERE (lower("alat"."jenis_sarana") like '%komputer%')
    GROUP BY "provinsi", "sekolah"."sekolah_id"
  ) AS a
GROUP BY provinsi
UNION ALL
SELECT 
    'Lebih dari 10 komputer' AS Komputer, SUM(CASE WHEN a.JumlahKomputer > 10 THEN 1 ELSE 0 END) AS "Sekolah"
FROM 
  (
    SELECT "sekolah"."provinsi", "sekolah"."sekolah_id", SUM("alat"."Jumlah") AS "JumlahKomputer"
    FROM "datamart"."sekolah" AS "sekolah"
    LEFT JOIN "datamart"."alat" AS "alat" ON "sekolah"."sekolah_id"="alat"."sekolah_id"
    WHERE (lower("alat"."jenis_sarana") like '%komputer%')
    GROUP BY "provinsi", "sekolah"."sekolah_id"
  ) AS a
GROUP BY provinsi

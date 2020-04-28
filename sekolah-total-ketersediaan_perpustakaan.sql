select
    'Punya Perpustakaan' as varName,sum(case when r.sekolah_id is null then 0 else 1 end) as varValue
from
    datamart.sekolah s
    left join (select distinct sekolah_id from datamart.ruang where jenis_prasarana='Ruang Perpustakaan') r
        on s.sekolah_id = r.sekolah_id
union all
select
    'Tidak Punya Perpustakaan' as varName,sum(case when r.sekolah_id is null then 1 else 0 end) as varValue
from
    datamart.sekolah s
    left join (select distinct sekolah_id from datamart.ruang where jenis_prasarana='Ruang Perpustakaan') r
        on s.sekolah_id = r.sekolah_id
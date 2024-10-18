SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
movie_info_idx mi_idx
WHERE t.kind_id = 7
AND mc.company_type_id = 2
AND mi_idx.info_type_id = 101
AND mi.info_type_id = 91

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = mi_idx.movie_id;
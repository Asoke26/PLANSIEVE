SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
movie_info_idx mi_idx
WHERE t.kind_id = 1
AND mc.company_type_id = 2
AND mi_idx.info_type_id = 99
AND mi.info_type_id = 65

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = mi_idx.movie_id;
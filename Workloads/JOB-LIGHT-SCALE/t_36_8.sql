SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
movie_info_idx mi_idx
WHERE t.kind_id = 7
AND mc.company_type_id = 1
AND mi_idx.info_type_id = 100
AND mi.info_type_id = 104

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = mi_idx.movie_id;
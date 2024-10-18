SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_info_idx mi_idx,
movie_companies mc
WHERE mi_idx.info_type_id = 101
AND mi.info_type_id = 11
AND t.production_year > 1934.0
AND t.production_year < 1939.0
AND mc.company_type_id = 2

AND t.id = mi.movie_id
AND t.id = mi_idx.movie_id
AND t.id = mc.movie_id;
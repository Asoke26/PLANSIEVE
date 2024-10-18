SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_info_idx mi_idx,
movie_companies mc
WHERE mi_idx.info_type_id = 112
AND mi.info_type_id = 61
AND t.production_year > 1917.0
AND t.production_year < 1962.0
AND mc.company_type_id = 1

AND t.id = mi.movie_id
AND t.id = mi_idx.movie_id
AND t.id = mc.movie_id;
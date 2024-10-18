SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_info_idx mi_idx,
movie_keyword mk,
movie_companies mc
WHERE t.production_year > 1980.0
AND mi.info_type_id = 15
AND mi_idx.info_type_id = 99

AND t.id = mi.movie_id
AND t.id = mk.movie_id
AND t.id = mi_idx.movie_id
AND t.id = mc.movie_id;
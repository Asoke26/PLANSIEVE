SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_info_idx mi_idx,
cast_info ci
WHERE mi.info_type_id = 110
AND mi_idx.info_type_id = 99
AND t.production_year > 1902.0
AND t.production_year < 1993.0

AND t.id = mi.movie_id
AND t.id = mi_idx.movie_id
AND t.id = ci.movie_id;
SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_info_idx mi_idx,
cast_info ci,
movie_keyword mk
WHERE mi.info_type_id = 78
AND mi_idx.info_type_id = 100
AND t.production_year > 1949.0

AND t.id = mi.movie_id
AND t.id = mi_idx.movie_id
AND t.id = ci.movie_id
AND t.id = mk.movie_id;
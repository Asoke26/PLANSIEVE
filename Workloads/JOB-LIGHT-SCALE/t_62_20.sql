SELECT COUNT(*)
 FROM title t,
cast_info ci,
movie_keyword mk,
movie_info_idx mi_idx
WHERE t.production_year > 1900.0
AND t.kind_id = 7
AND mi_idx.info_type_id = 100

AND t.id = mk.movie_id
AND t.id = ci.movie_id
AND t.id = mi_idx.movie_id;
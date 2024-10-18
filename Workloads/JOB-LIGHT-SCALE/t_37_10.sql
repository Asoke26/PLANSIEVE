SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_info_idx mi_idx,
movie_keyword mk
WHERE t.production_year > 1964.0
AND t.kind_id = 4
AND mi.info_type_id = 89
AND mi_idx.info_type_id = 99

AND t.id = mi.movie_id
AND t.id = mk.movie_id
AND t.id = mi_idx.movie_id;
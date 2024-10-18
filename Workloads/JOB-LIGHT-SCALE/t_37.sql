SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_info_idx mi_idx,
movie_keyword mk
WHERE t.production_year>2010
AND t.kind_id=1
AND mi.info_type_id=8
AND mi_idx.info_type_id=101

AND t.id = mi.movie_id
AND t.id = mk.movie_id
AND t.id = mi_idx.movie_id;
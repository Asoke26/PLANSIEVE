SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.nr_order<=1.0 AND 
t.phonetic_code='S3526' AND 
mi_idx.info_type_id=100 AND 
ci.role_id=4 AND 
t.production_year<=1933.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;
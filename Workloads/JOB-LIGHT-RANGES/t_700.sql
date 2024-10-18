SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year>=1956.0 AND 
mi_idx.info_type_id=101 AND 
mi.info_type_id=9 AND 
ci.role_id=1 AND 
t.kind_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;
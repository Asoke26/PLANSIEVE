SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year>=1992.0 AND 
mi.info_type_id=15 AND 
ci.role_id=1 AND 
ci.nr_order=1.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;
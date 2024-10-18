SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.role_id=2 AND 
ci.nr_order=59.0 AND 
t.kind_id=1 AND 
mi_idx.info_type_id=99 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;
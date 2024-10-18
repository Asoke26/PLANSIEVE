SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year<=2000.0 AND 
ci.nr_order=17.0 AND 
ci.role_id=2 AND 
t.phonetic_code>='F6252' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;
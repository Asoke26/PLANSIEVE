SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.production_year<=1988.0 AND 
mi.info_type_id=5 AND 
ci.nr_order=20.0 AND 
t.kind_id=1 AND 
mi_idx.info_type_id=99 AND 
t.phonetic_code>='G62' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;
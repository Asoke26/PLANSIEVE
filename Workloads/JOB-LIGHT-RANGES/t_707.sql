SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE mi.info_type_id=15 AND 
ci.nr_order>=7.0 AND 
t.phonetic_code='F2145' AND 
t.kind_id=7 AND 
t.production_year=2011.0 AND 
ci.role_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;
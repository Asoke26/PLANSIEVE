SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi.info_type_id=3 AND 
t.phonetic_code<='F3651' AND 
t.production_year>=2008.0 AND 
ci.nr_order>=7.0 AND 
t.kind_id=4 AND 
ci.role_id=2 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;
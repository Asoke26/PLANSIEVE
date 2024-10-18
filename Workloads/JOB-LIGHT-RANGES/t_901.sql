SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year>=1994.0 AND 
ci.role_id=10 AND 
t.phonetic_code<='C6' AND 
t.kind_id=1 AND 
mi.info_type_id=54 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;
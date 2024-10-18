SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
t.kind_id=1 AND 
mi_idx.info_type_id=101 AND 
t.production_year=2011.0 AND 
t.phonetic_code='V6432' AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;
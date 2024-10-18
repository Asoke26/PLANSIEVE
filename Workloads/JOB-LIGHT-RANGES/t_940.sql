SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.role_id=10 AND 
t.kind_id=1 AND 
t.phonetic_code>='H342' AND 
t.production_year<=2004.0 AND 
mi_idx.info_type_id=99 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;
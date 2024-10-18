SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.role_id=1 AND 
mk.keyword_id=6623 AND 
mi.info_type_id=107 AND 
t.phonetic_code>='B3531' AND 
mi_idx.info_type_id=100 AND 
t.production_year>=1991.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;
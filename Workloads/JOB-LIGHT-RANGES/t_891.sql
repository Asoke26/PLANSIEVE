SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year=1967.0 AND 
t.phonetic_code>='C2564' AND 
ci.role_id=1 AND 
ci.nr_order<=15.0 AND 
mk.keyword_id=1537 AND 
mi.info_type_id=16 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;
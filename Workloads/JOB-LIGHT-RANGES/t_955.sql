SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.production_year=1999.0 AND 
ci.nr_order=24.0 AND 
t.phonetic_code>='T32' AND 
mk.keyword_id=2081 AND 
ci.role_id=1 AND 
mi_idx.info_type_id=101 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;
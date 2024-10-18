SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.nr_order<=33.0 AND 
mk.keyword_id=6016 AND 
ci.role_id=2 AND 
t.phonetic_code>='E62' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;
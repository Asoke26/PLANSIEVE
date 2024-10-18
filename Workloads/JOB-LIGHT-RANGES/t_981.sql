SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code='G6532' AND 
t.kind_id=1 AND 
ci.nr_order>=10.0 AND 
mk.keyword_id=807 AND 
ci.role_id=1 AND 
mi_idx.info_type_id=101 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;
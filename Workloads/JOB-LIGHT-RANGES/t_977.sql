SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=5223 AND 
t.kind_id=1 AND 
ci.role_id=1 AND 
mi_idx.info_type_id=100 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;
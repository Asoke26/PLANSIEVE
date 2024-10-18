SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,title t
WHERE t.phonetic_code='D1216' AND 
mi.info_type_id=17 AND 
t.kind_id=1 AND 
ci.role_id=1 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id;
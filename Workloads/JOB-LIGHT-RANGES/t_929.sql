SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.phonetic_code='J524' AND 
mk.keyword_id=4453 AND 
t.kind_id=7 AND 
mi.info_type_id=16 AND 
t.episode_nr=5.0 AND 
ci.role_id=3 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;
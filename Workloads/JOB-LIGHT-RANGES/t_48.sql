SELECT COUNT(*)
FROM movie_companies mc,movie_info_idx mi_idx,title t
WHERE t.kind_id=7 AND 
mi_idx.info_type_id=99 AND 
t.phonetic_code>='N612' AND 
t.episode_nr<=4.0 AND 

t.id = mc.movie_id AND 
t.id = mi_idx.movie_id;